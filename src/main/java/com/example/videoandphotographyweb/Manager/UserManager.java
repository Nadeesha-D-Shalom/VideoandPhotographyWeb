package com.example.videoandphotographyweb.Manager;

import com.example.videoandphotographyweb.Classes.User;

import java.io.*;
import java.util.*;

public class UserManager {
    private List<User> users = new ArrayList<>();
    private static final String FILE_PATH = "E:/SLIIT_Bacholer/_1_Year_sem2/OOP_External_Project/VideoandPhotographyWeb/users.txt";

    public UserManager() {
        try {
            loadFromFile();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void loadFromFile() throws IOException {
        users.clear();
        File file = new File(FILE_PATH);
        if (!file.exists()) file.createNewFile();

        try (Scanner scanner = new Scanner(file)) {
            while (scanner.hasNextLine()) {
                String[] parts = scanner.nextLine().split(",");
                if (parts.length == 4) {
                    users.add(new User(parts[0], parts[1], parts[2], parts[3]));
                }
            }
        }
    }

    public void saveToFile() throws IOException {
        try (PrintWriter writer = new PrintWriter(new FileWriter(FILE_PATH))) {
            for (User user : users) {
                writer.println(user.toString());
            }
        }
    }

    public boolean validateUser(String username, String password) {
        for (User user : users) {
            if (user.getUsername().equals(username) && user.getPassword().equals(password)) {
                return true;
            }
        }
        return false;
    }

    public void addUser(User user) {
        for (User existing : users) {
            if (existing.getUsername().equals(user.getUsername())) {
                throw new IllegalArgumentException("Username already exists.");
            }
        }
        users.add(user);
    }

    public boolean deleteUser(String username, String password) {
        boolean deleted = false;
        Iterator<User> iterator = users.iterator();
        while (iterator.hasNext()) {
            User user = iterator.next();
            if (user.getUsername().equals(username) && user.getPassword().equals(password)) {
                iterator.remove();
                deleted = true;
                break;
            }
        }
        try {
            saveToFile();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return deleted;
    }

    public boolean updatePassword(String username, String oldPassword, String newPassword) {
        for (User user : users) {
            if (user.getUsername().equals(username) && user.getPassword().equals(oldPassword)) {
                user.setPassword(newPassword);
                try {
                    saveToFile();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                return true;
            }
        }
        return false;
    }

}
