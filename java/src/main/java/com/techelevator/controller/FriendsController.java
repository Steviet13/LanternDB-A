package com.techelevator.controller;

import com.techelevator.dao.JdbcFriendshipsDao;
import com.techelevator.dao.JdbcUserDao;
import com.techelevator.model.Friendships;
import com.techelevator.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.security.Principal;
import java.util.List;

@CrossOrigin
@RestController
public class FriendsController {
    @Autowired
    private JdbcFriendshipsDao jdbcFriendshipsDao;
    @Autowired
    private JdbcUserDao jdbcUserDao;

    @GetMapping("/friends")
    public List<Friendships> fetchFriends(Principal principal) {

        String userName = principal.getName();
        User user = jdbcUserDao.getUserByUsername(userName);
        int userId = user.getId();

        return jdbcFriendshipsDao.fetchFriendsList(userId);
    }

    @PostMapping("/friends")
    public Friendships addFriend(@RequestBody Friendships friendshipRequest, Principal principal) {
        String userName = principal.getName();
        User user = jdbcUserDao.getUserByUsername(userName);
        int loggedInUserId = user.getId();

        int user1 = Math.min(loggedInUserId, friendshipRequest.getUserid2());
        int user2 = Math.max(loggedInUserId, friendshipRequest.getUserid2());

        Friendships newFriendship = new Friendships();
        newFriendship.setUserid1(user1);
        newFriendship.setUserid2(user2);
        newFriendship.setIs_favorite(false);

        return jdbcFriendshipsDao.addFriend(newFriendship);
    }

    @DeleteMapping("/friends/{friendId}")
    public ResponseEntity<Void> removeFriend(@PathVariable int friendId, Principal principal) {

        String username = principal.getName();
        User user = jdbcUserDao.getUserByUsername(username);
        int loggedInUserId = user.getId();

        // Create a Friendships object for deletion
        Friendships friendshipToDelete = new Friendships(
                0,
                loggedInUserId,
                friendId,
                false,
                null,
                null,
                null
        );

        int rowsDeleted = jdbcFriendshipsDao.deleteFriend(friendshipToDelete);

        if (rowsDeleted > 0) {

            return ResponseEntity.noContent().build(); // HTTP 204

        } else {

            return ResponseEntity.notFound().build(); // HTTP 404
        }
    }


}
