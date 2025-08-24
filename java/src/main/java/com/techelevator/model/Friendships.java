package com.techelevator.model;

import java.time.LocalDateTime;

public class Friendships {
    private int friendshipid;
    private int userid1;
    private int userid2;
    private boolean is_favorite;
    private LocalDateTime created_at;
    private String friendUsername;
    private String status;

    public Friendships(int friendshipid, int userid1, int userid2, boolean is_favorite, LocalDateTime created_at, String friendUsername, String status) {
        this.friendshipid = friendshipid;
        this.userid1 = userid1;
        this.userid2 = userid2;
        this.is_favorite = is_favorite;
        this.created_at = created_at;
        this.friendUsername = friendUsername;
        this.status = status;

    }

    public int getFriendshipid() {
        return friendshipid;
    }

    public void setFriendshipid(int friendshipid) {
        this.friendshipid = friendshipid;
    }

    public int getUserid1() {
        return userid1;
    }

    public void setUserid1(int userid1) {
        this.userid1 = userid1;
    }

    public int getUserid2() {
        return userid2;
    }

    public void setUserid2(int userid2) {
        this.userid2 = userid2;
    }

    public boolean isIs_favorite() {
        return is_favorite;
    }

    public void setIs_favorite(boolean is_favorite) {
        this.is_favorite = is_favorite;
    }

    public LocalDateTime getCreated_at() {
        return created_at;
    }

    public void setCreated_at(LocalDateTime created_at) {
        this.created_at = created_at;
    }

    public String getFriendUsername() {
        return friendUsername;
    }

    public String getStatus() {
        return status;
    }

}
