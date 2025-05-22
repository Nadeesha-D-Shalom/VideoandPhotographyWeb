package com.example.videoandphotographyweb.Classes;

public class MediaPro {
    private String id;
    private String name;
    private String contact;
    private String email;
    private String specialization;
    private String type;
    private String profileImage; // ✅ New field for random image filename

    public MediaPro(String id, String name, String contact, String email, String specialization, String type, String profileImage) {
        this.id = id;
        this.name = name;
        this.contact = contact;
        this.email = email;
        this.specialization = specialization;
        this.type = type;
        this.profileImage = profileImage;
    }

    // Getters
    public String getId() { return id; }
    public String getName() { return name; }
    public String getContact() { return contact; }
    public String getEmail() { return email; }
    public String getSpecialization() { return specialization; }
    public String getType() { return type; }
    public String getProfileImage() { return profileImage; }

    // Setters
    public void setName(String name) { this.name = name; }
    public void setContact(String contact) { this.contact = contact; }
    public void setEmail(String email) { this.email = email; }
    public void setSpecialization(String specialization) { this.specialization = specialization; }
    public void setType(String type) { this.type = type; }
    public void setProfileImage(String profileImage) { this.profileImage = profileImage; }

    @Override
    public String toString() {
        return id + "," + name + "," + contact + "," + email + "," + specialization + "," + type + "," + profileImage;
    }
}
