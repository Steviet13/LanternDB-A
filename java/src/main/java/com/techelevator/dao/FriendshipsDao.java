package com.techelevator.dao;

import com.techelevator.model.Friendships;

import java.util.List;

public interface FriendshipsDao {
    Friendships addFriend(Friendships friendships);

    List<Friendships> fetchFriendsList(int userid1);

    int deleteFriend(Friendships friendships);

}
