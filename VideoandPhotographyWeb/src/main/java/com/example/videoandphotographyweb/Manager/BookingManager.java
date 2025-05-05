// BookingManager.java
package com.example.videoandphotographyweb.Manager;

import com.example.videoandphotographyweb.Classes.Booking;

import java.io.FileWriter;
import java.io.IOException;
import java.util.LinkedList;
import java.util.Queue;

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

    public Queue<Booking> getAllBookings() {
        return bookingQueue;
    }
}
