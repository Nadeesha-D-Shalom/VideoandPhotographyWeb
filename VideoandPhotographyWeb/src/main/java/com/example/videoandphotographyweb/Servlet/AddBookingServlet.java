// AddBookingServlet.java
package com.example.videoandphotographyweb.Servlet;

import com.example.videoandphotographyweb.Classes.Booking;
import com.example.videoandphotographyweb.Manager.BookingManager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/addBooking")
public class AddBookingServlet extends HttpServlet {
    private BookingManager bookingManager;

    @Override
    public void init() throws ServletException {
        bookingManager = new BookingManager();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("customerName");
        String date = request.getParameter("eventDate");
        String type = request.getParameter("eventType");

        if (name != null && date != null && type != null &&
                !name.isEmpty() && !date.isEmpty() && !type.isEmpty()) {

            Booking booking = new Booking(name, date, type);
            bookingManager.addBooking(booking);

            response.sendRedirect("bookingSuccess.jsp");
        } else {
            response.sendRedirect("bookingError.jsp");
        }
    }
}
