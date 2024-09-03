package com.techelevator.dao;

import com.techelevator.exception.DaoException;
import com.techelevator.model.Friends;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
@Component
public class JdbcFriendsDao implements FriendsDao{

    @Autowired
    private final JdbcTemplate jdbcTemplate;
    @Autowired
    private final JdbcUserDao jdbcUserDao;


    public JdbcFriendsDao(JdbcTemplate jdbcTemplate, JdbcUserDao jdbcUserDao) {
        this.jdbcTemplate = jdbcTemplate;
        this.jdbcUserDao = jdbcUserDao;
    }

    @Override
    public Friends addFriend(Friends friends) {
        return null;
    }

    @Override
    public List<Friends> fetchFriendsList(int ownerId) {

        List<Friends> friendsList = new ArrayList<>();

        String sql = "SELECT " +
                "    friends.friend_id AS friend_id, " +
                "    friends.list_owner_id AS list_owner_id, " +
                "    friends.list_owner_name AS list_owner_name, " +
                "    friends.friend_user_id AS friend_user_id, " +
                "    friends.friend_user_name AS friend_user_name, " +
                "    users.status AS status " +
                "FROM " +
                "    friends " +
                "JOIN " +
                "    users " +
                "ON " +
                "    friends.friend_user_id = users.user_id " +
                "WHERE " +
                "    friends.list_owner_id = ?;";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, ownerId);
            while (results.next()) {
                friendsList.add( mapRowToFriend(results));
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }


        return friendsList;
    }

    @Override
    public int deleteFriend(Friends friends) {
        return 0;
    }


    public Friends mapRowToFriend(SqlRowSet rs) {
        return new Friends(
                rs.getInt("friend_id"),
                rs.getInt("list_owner_id"),
                rs.getString("list_owner_name"),
                rs.getInt("friend_user_id"),
                rs.getString("friend_user_name"),
                rs.getString("status")
        );
    }
}
