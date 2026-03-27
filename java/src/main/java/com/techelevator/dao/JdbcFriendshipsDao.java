package com.techelevator.dao;

import com.techelevator.exception.DaoException;
import com.techelevator.model.Friendships;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
@Component
public class JdbcFriendshipsDao implements FriendshipsDao {

    @Autowired
    private final JdbcTemplate jdbcTemplate;
    @Autowired
    private final JdbcUserDao jdbcUserDao;


    public JdbcFriendshipsDao(JdbcTemplate jdbcTemplate, JdbcUserDao jdbcUserDao) {
        this.jdbcTemplate = jdbcTemplate;
        this.jdbcUserDao = jdbcUserDao;
    }

    @Override
    public Friendships addFriend(Friendships friendships) {
        String sql = "INSERT INTO friendships (userid1, userid2, is_favorite)" +
                     "Values (?,?,?)" +
                     "RETURNING friendshipid, userid1, userid2, is_favorite, created_at";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql,
                    friendships.getUserid1(),
                    friendships.getUserid2(),
                    friendships.isIs_favorite()
            );

        if(results.next()) {
            Friendships newFriendship = new Friendships();
            newFriendship.setFriendshipid(results.getInt("friendshipid"));
            newFriendship.setUserid1(results.getInt("userid1"));
            newFriendship.setUserid2(results.getInt("userid2"));
            newFriendship.setIs_favorite(results.getBoolean("is_favorite"));
            newFriendship.setCreated_at(results.getTimestamp("created_at").toLocalDateTime());
            return newFriendship;
        }    else {
            throw new DaoException("Failed to insert friendship");
        }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }
    }

    @Override
    public List<Friendships> fetchFriendsList(int loggedInUserId) {

        List<Friendships> friendsList = new ArrayList<>();

        String sql = "SELECT f.friendshipid, " +
                "CASE WHEN f.userid1 = ? THEN f.userid2 ELSE f.userid1 END AS friend_id, " +
                "f.is_favorite, f.created_at, " +
                "u.username AS friend_username, u.status " +
                "FROM friendships f " +
                "JOIN users u ON u.user_id = CASE WHEN f.userid1 = ? THEN f.userid2 ELSE f.userid1 END " +
                "WHERE ? IN (f.userid1, f.userid2) " +
                "ORDER BY CASE WHEN u.status = 'ONLINE' THEN 0 ELSE 1 END, u.username ASC";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, loggedInUserId, loggedInUserId, loggedInUserId);
            while (results.next()) {
                friendsList.add(mapRowToFriendship(results, loggedInUserId));
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }


        return friendsList;
    }

    @Override
    public int deleteFriend(Friendships friendships) {
        int rows = 0;

        int user1 = Math.min(friendships.getUserid1(), friendships.getUserid2());
        int user2 = Math.max(friendships.getUserid1(), friendships.getUserid2());

        String sql = "DELETE FROM friendships WHERE userid1 = ? AND userid2 = ?";

        try {
            rows = jdbcTemplate.update(sql, user1, user2);
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        } catch (DataIntegrityViolationException e) {
            throw new DaoException("Data integrity violation", e);
        }

        return rows;
    }


    public Friendships mapRowToFriendship(SqlRowSet rs, int loggedInUserId) {
        return new Friendships(
                rs.getInt("friendshipid"),
                loggedInUserId,                  // always the logged-in user
                rs.getInt("friend_id"),           // the friend
                rs.getBoolean("is_favorite"),
                rs.getTimestamp("created_at") != null ? rs.getTimestamp("created_at").toLocalDateTime() : null,
                rs.getString("friend_username"),
                rs.getString("status")
        );
    }
}
