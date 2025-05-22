package com.example.videoandphotographyweb.Manager;

import com.example.videoandphotographyweb.Classes.Package;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class PackageManager {
    private static final String FILE_PATH = "E:/SLIIT_Bacholer/_1_Year_sem2/OOP_External_Project/VideoandPhotographyWeb/packages.txt";

    public static void addPackage(Package p) {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(FILE_PATH, true))) {
            writer.write(p.toString());
            writer.newLine();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static List<Package> getAllPackages() {
        List<Package> list = new ArrayList<>();
        try (BufferedReader reader = new BufferedReader(new FileReader(FILE_PATH))) {
            String line;
            while ((line = reader.readLine()) != null) {
                String[] parts = line.split("\\|", 4);
                if (parts.length == 4) {
                    Package p = new Package(
                            parts[0],
                            parts[1],
                            parts[2],
                            Double.parseDouble(parts[3])
                    );
                    list.add(p);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return list;
    }

    public static void deletePackage(String id) {
        List<Package> list = getAllPackages();
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(FILE_PATH))) {
            for (Package p : list) {
                if (!p.getId().equals(id)) {
                    writer.write(p.toString());
                    writer.newLine();
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void updatePackage(Package updated) {
        List<Package> list = getAllPackages();
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(FILE_PATH))) {
            for (Package p : list) {
                if (p.getId().equals(updated.getId())) {
                    writer.write(updated.toString());
                } else {
                    writer.write(p.toString());
                }
                writer.newLine();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
