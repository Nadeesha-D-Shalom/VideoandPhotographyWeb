package com.example.videoandphotographyweb.Manager;

import com.example.videoandphotographyweb.Classes.MediaPro;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class MediaProManager {
    private static final String FILE_PATH = "E:/SLIIT_Bacholer/_1_Year_sem2/OOP_External_Project/VideoandPhotographyWeb/photographers.txt";

    // Read all MediaPros
    public static List<MediaPro> getAllMediaPros() {
        List<MediaPro> mediaPros = new ArrayList<>();
        try (BufferedReader reader = new BufferedReader(new FileReader(FILE_PATH))) {
            String line;
            while ((line = reader.readLine()) != null) {
                String[] parts = line.split(",", -1);
                if (parts.length == 7) {
                    String id = parts[0];
                    String name = parts[1];
                    String contact = parts[2];
                    String email = parts[3];
                    String specialization = parts[4];
                    String type = parts[5];
                    String profileImage = parts[6];
                    mediaPros.add(new MediaPro(id, name, contact, email, specialization, type, profileImage));
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return mediaPros;
    }

    public static void addMediaPro(MediaPro mediaPro) {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(FILE_PATH, true))) {
            writer.write(mediaPro.toString());
            writer.newLine();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void deleteMediaPro(String id) {
        List<MediaPro> mediaPros = getAllMediaPros();
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(FILE_PATH))) {
            for (MediaPro m : mediaPros) {
                if (!m.getId().equals(id)) {
                    writer.write(m.toString());
                    writer.newLine();
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void updateMediaPro(MediaPro updatedMediaPro) {
        List<MediaPro> mediaPros = getAllMediaPros();
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(FILE_PATH))) {
            for (MediaPro m : mediaPros) {
                if (m.getId().equals(updatedMediaPro.getId())) {
                    writer.write(updatedMediaPro.toString());
                } else {
                    writer.write(m.toString());
                }
                writer.newLine();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static List<MediaPro> getMediaProsSortedByRating() {
        List<MediaPro> mediaPros = getAllMediaPros();

        for (int i = 0; i < mediaPros.size() - 1; i++) {
            for (int j = 0; j < mediaPros.size() - i - 1; j++) {
                double rating1 = RatingManager.getAverageRating(mediaPros.get(j).getId());
                double rating2 = RatingManager.getAverageRating(mediaPros.get(j + 1).getId());

                if (rating1 < rating2) {
                    MediaPro temp = mediaPros.get(j);
                    mediaPros.set(j, mediaPros.get(j + 1));
                    mediaPros.set(j + 1, temp);
                }
            }
        }

        return mediaPros;
    }

    public static String getImageById(String id) {
        List<MediaPro> list = getAllMediaPros();
        for (MediaPro m : list) {
            if (m.getId().equals(id)) {
                return m.getProfileImage();
            }
        }
        return "default-user.png"; // fallback image
    }

}
