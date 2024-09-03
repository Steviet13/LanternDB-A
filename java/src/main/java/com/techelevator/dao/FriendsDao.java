package com.techelevator.dao;

import com.techelevator.model.Friends;

import java.util.List;

public interface FriendsDao {
    Friends addFriend(Friends friends);

    List<Friends> fetchFriendsList(int ownerId);

    int deleteFriend(Friends friends);

}
