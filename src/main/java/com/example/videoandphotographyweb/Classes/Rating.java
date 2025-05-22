package com.example.videoandphotographyweb.Classes;

public class Rating {
    private String ratingId;
    private String mediaProId;
    private String username;
    private int stars; // 1 to 5
    private String comment;

    public Rating(String ratingId, String mediaProId, String username, int stars, String comment) {
        this.ratingId = ratingId;
        this.mediaProId = mediaProId;
        this.username = username;
        this.stars = stars;
        this.comment = comment;
    }

    // Getters
    public String getRatingId() { return ratingId; }
    public String getMediaProId() { return mediaProId; }
    public String getUsername() { return username; }
    public int getStars() { return stars; }
    public String getComment() { return comment; }

    // Setters
    public void setStars(int stars) { this.stars = stars; }
    public void setComment(String comment) { this.comment = comment; }

    @Override
    public String toString() {
        return ratingId + "," + mediaProId + "," + username + "," + stars + "," + comment.replace(",", " ");
    }
}
