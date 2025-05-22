// ViewBookingsServlet.java
package com.example.videoandphotographyweb.Servlet;

import com.example.videoandphotographyweb.Classes.Booking;
import com.example.videoandphotographyweb.Manager.BookingManager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.Queue;

@WebServlet("/viewBookings")
public class ViewBookingsServlet extends HttpServlet {
    private BookingManager bookingManager;

    @Override
    public void init() throws ServletException {
        bookingManager = new BookingManager();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Queue<Booking> bookings = bookingManager.loadBookingsFromFile();
        request.setAttribute("bookings", bookings);
        request.getRequestDispatcher("viewBookings.jsp").forward(request, response);
    }
}
