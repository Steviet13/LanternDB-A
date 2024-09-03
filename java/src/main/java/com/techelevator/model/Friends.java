package com.techelevator.model;

public class Friends {
    private int friend_id;
    private int list_owner_id;
    private String list_owner_name;
    private int friend_user_id;
    private String friend_user_name;
    private String status;

    public Friends(int friend_id, int list_owner_id, String list_owner_name, int friend_user_id, String friend_user_name, String status) {
        this.friend_id = friend_id;
        this.list_owner_id = list_owner_id;
        this.list_owner_name = list_owner_name;
        this.friend_user_id = friend_user_id;
        this.friend_user_name = friend_user_name;
        this.status = status;
    }

    public int getFriend_id() {
        return friend_id;
    }

    public void setFriend_id(int friend_id) {
        this.friend_id = friend_id;
    }

    public int getList_owner_id() {
        return list_owner_id;
    }

    public void setList_owner_id(int list_owner_id) {
        this.list_owner_id = list_owner_id;
    }

    public String getList_owner_name() {
        return list_owner_name;
    }

    public void setList_owner_name(String list_owner_name) {
        this.list_owner_name = list_owner_name;
    }

    public int getFriend_user_id() {
        return friend_user_id;
    }

    public void setFriend_user_id(int friend_user_id) {
        this.friend_user_id = friend_user_id;
    }

    public String getFriend_user_name() {
        return friend_user_name;
    }

    public void setFriend_user_name(String friend_user_name) {
        this.friend_user_name = friend_user_name;
    }
}
