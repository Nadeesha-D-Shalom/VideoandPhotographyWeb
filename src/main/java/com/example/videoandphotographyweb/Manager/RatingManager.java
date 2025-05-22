package com.example.videoandphotographyweb.Manager;

import com.example.videoandphotographyweb.Classes.Rating;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class RatingManager {
    private static final String FILE_PATH = "E:/SLIIT_Bacholer/_1_Year_sem2/OOP_External_Project/VideoandPhotographyWeb/ratings.txt";

    // Add a new rating
    public static void addRating(Rating rating) {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(FILE_PATH, true))) {
            writer.write(rating.toString());
            writer.newLine();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    // Get all ratings for a given mediaProId
    public static List<Rating> getRatingsByMediaProId(String mediaProId) {
        List<Rating> ratings = new ArrayList<>();
        try (BufferedReader reader = new BufferedReader(new FileReader(FILE_PATH))) {
            String line;
            while ((line = reader.readLine()) != null) {
                String[] parts = line.split(",", 5);
                if (parts.length == 5 && parts[1].equals(mediaProId)) {
                    ratings.add(new Rating(
                            parts[0],
                            parts[1],
                            parts[2],
                            Integer.parseInt(parts[3]),
                            parts[4]
                    ));
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return ratings;
    }

    // Get average rating
    public static double getAverageRating(String mediaProId) {
        List<Rating> list = getRatingsByMediaProId(mediaProId);
        if (list.isEmpty()) return 0;
        int sum = 0;
        for (Rating r : list) sum += r.getStars();
        return (double) sum / list.size();
    }

    // Get rating count
    public static int getRatingCount(String mediaProId) {
        return getRatingsByMediaProId(mediaProId).size();
    }
}
