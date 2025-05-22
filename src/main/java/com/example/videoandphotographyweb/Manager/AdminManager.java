package com.example.videoandphotographyweb.Manager;

import com.example.videoandphotographyweb.Classes.Admin;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.*;

public class AdminManager {
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

    public void addAdmin(Admin newAdmin) {
        if (isUsernameExists(newAdmin.getUsername())) {
            throw new IllegalArgumentException("Username already exists.");
        }

        try (FileWriter writer = new FileWriter(FILE_PATH, true)) {
            writer.write(newAdmin.getUsername() + "," + newAdmin.getPassword() + "\n");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private boolean isUsernameExists(String username) {
        try (Scanner scanner = new Scanner(new File(FILE_PATH))) {
            while (scanner.hasNextLine()) {
                String[] parts = scanner.nextLine().split(",");
                if (parts.length == 2 && parts[0].equals(username)) {
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public void deleteAdminByUsername(String username) {
        List<Admin> updatedList = new ArrayList<>();
        try (Scanner scanner = new Scanner(new File(FILE_PATH))) {
            while (scanner.hasNextLine()) {
                String[] parts = scanner.nextLine().split(",");
                if (parts.length == 2 && !parts[0].equals(username)) {
                    updatedList.add(new Admin(parts[0], parts[1]));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        try (FileWriter writer = new FileWriter(FILE_PATH, false)) {
            for (Admin admin : updatedList) {
                writer.write(admin.getUsername() + "," + admin.getPassword() + "\n");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void updateAdmin(String oldUsername, Admin updatedAdmin) {
        List<Admin> updatedList = new ArrayList<>();
        try (Scanner scanner = new Scanner(new File(FILE_PATH))) {
            while (scanner.hasNextLine()) {
                String[] parts = scanner.nextLine().split(",");
                if (parts.length == 2) {
                    if (parts[0].equals(oldUsername)) {
                        updatedList.add(updatedAdmin);
                    } else {
                        updatedList.add(new Admin(parts[0], parts[1]));
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        try (FileWriter writer = new FileWriter(FILE_PATH, false)) {
            for (Admin admin : updatedList) {
                writer.write(admin.getUsername() + "," + admin.getPassword() + "\n");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public List<Admin> getAdmins() {
        List<Admin> admins = new ArrayList<>();
        try (Scanner scanner = new Scanner(new File(FILE_PATH))) {
            while (scanner.hasNextLine()) {
                String[] parts = scanner.nextLine().split(",");
                if (parts.length == 2) {
                    admins.add(new Admin(parts[0], parts[1]));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return admins;
    }
}
