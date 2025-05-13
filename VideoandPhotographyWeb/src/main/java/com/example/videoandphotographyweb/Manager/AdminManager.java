package com.example.videoandphotographyweb.Manager;

import java.io.File;
import java.util.Scanner;

public class AdminManager {
    // private static final String FILE_PATH = "/admins.txt";
    private static final String FILE_PATH = "E:/SLIIT_Bacholer/_1_Year_sem2/OOP_External_Project/VideoandPhotographyWeb/admins.txt";

    public boolean validateAdmin(String username, String password) {
        try (Scanner scanner = new Scanner(new File(FILE_PATH))) {
            while (scanner.hasNextLine()) {
                String[] parts = scanner.nextLine().split(",");
                if (parts.length == 2 && parts[0].equals(username) && parts[1].equals(password)) {
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}

