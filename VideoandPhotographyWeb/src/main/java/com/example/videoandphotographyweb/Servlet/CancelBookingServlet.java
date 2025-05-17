package com.example.videoandphotographyweb.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.*;
import java.util.*;

@WebServlet("/cancelBooking")
public class CancelBookingServlet extends HttpServlet {
    private final String FILE_PATH = "E:/SLIIT_Bacholer/_1_Year_sem2/OOP_External_Project/VideoandPhotographyWeb/bookings.txt";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String customerName = request.getParameter("customerName");
        String eventDate = request.getParameter("eventDate");

        if (customerName == null || eventDate == null ||
                customerName.trim().isEmpty() || eventDate.trim().isEmpty()) {
            response.sendRedirect("cancelBooking.jsp?error=missingFields");
            return;
        }

        File file = new File(FILE_PATH);
        List<String> updatedLines = new ArrayList<>();
        boolean bookingFound = false;

        try (BufferedReader reader = new BufferedReader(new FileReader(file))) {
            String line;

            while ((line = reader.readLine()) != null) {
                String[] parts = line.split(",");
                if (parts.length >= 2) {
                    if (parts[0].equalsIgnoreCase(customerName.trim()) && parts[1].equals(eventDate.trim())) {
                        bookingFound = true;
                        continue; // Skip this line
                    }
                }
                updatedLines.add(line);
            }
        }

        try (BufferedWriter writer = new BufferedWriter(new FileWriter(file))) {
            for (String updatedLine : updatedLines) {
                writer.write(updatedLine);
                writer.newLine();
            }
        }

        if (bookingFound) {
            response.sendRedirect("bookingCancelSuccess.jsp");
        } else {
            response.sendRedirect("cancelBooking.jsp?error=notFound");
        }
    }
}
