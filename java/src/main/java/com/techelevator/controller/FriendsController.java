package com.techelevator.controller;

import com.techelevator.dao.JdbcFriendsDao;
import com.techelevator.dao.JdbcUserDao;
import com.techelevator.model.Friends;
import com.techelevator.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;
import java.util.List;

@CrossOrigin
@RestController
public class FriendsController {
    @Autowired
    private JdbcFriendsDao jdbcFriendsDao;
    @Autowired
    private JdbcUserDao jdbcUserDao;

    @GetMapping("/friends")
    public List<Friends> fetchFriends(Principal principal) {

        String userName = principal.getName();
        User user = jdbcUserDao.getUserByUsername(userName);
        int userId = user.getId();

        return jdbcFriendsDao.fetchFriendsList(userId);
    }


}
