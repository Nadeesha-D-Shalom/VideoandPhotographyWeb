package com.example.videoandphotographyweb.Manager;

import com.example.videoandphotographyweb.Classes.Booking;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.LinkedList;
import java.util.Queue;
import java.util.Scanner;

public class BookingManager {
    private Queue<Booking> bookingQueue = new LinkedList<>();
    private final String FILE_PATH = "E:/SLIIT_Bacholer/_1_Year_sem2/OOP_External_Project/VideoandPhotographyWeb/bookings.txt";

    public void addBooking(Booking booking) {
        bookingQueue.add(booking);
        saveToFile(booking);
    }

    private void saveToFile(Booking booking) {
        try (FileWriter writer = new FileWriter(FILE_PATH, true)) {
            writer.write(booking.toString() + "\n");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public Queue<Booking> loadBookingsFromFile() {
        Queue<Booking> queue = new LinkedList<>();
        try (Scanner scanner = new Scanner(new File(FILE_PATH))) {
            while (scanner.hasNextLine()) {
                String line = scanner.nextLine();
                String[] parts = line.split(",");
                if (parts.length == 7) {

                    Booking booking = new Booking(parts[0], parts[1], parts[2], parts[3], parts[4], parts[5], parts[6]);
                    queue.add(booking);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return queue;
    }

    public Queue<Booking> getBookingQueue() {
        return bookingQueue;
    }
}
