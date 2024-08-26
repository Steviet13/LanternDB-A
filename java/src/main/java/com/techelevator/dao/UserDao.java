package com.techelevator.dao;

import com.techelevator.model.RegisterUserDto;
import com.techelevator.model.User;

import java.util.List;

public interface UserDao {

    List<User> getUsers();

    User getUserById(int id);

    User getUserByUsername(String username);

    User createUser(RegisterUserDto user);

    int deleteUser(int user_id);

    void updateUserStatus(String status, int id);

    int getUserIdByUsername(String username);

    void updateUserStatusToOffline(int id);
}
