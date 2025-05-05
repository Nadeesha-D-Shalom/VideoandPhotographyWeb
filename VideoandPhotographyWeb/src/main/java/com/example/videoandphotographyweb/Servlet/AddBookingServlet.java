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
        String city = request.getParameter("city");
        String address = request.getParameter("address");
        String contactNumber = request.getParameter("contactNumber");

        if (name == null || date == null || type == null ||
                city == null || address == null || contactNumber == null ||
                name.trim().isEmpty() || date.trim().isEmpty() || type.trim().isEmpty() ||
                city.trim().isEmpty() || address.trim().isEmpty() || contactNumber.trim().isEmpty()) {

            response.sendRedirect("bookingError.jsp");
            return;
        }

        Booking booking = new Booking(name, date, type, city, address, contactNumber);
        bookingManager.addBooking(booking);
        response.sendRedirect("bookingSuccess.jsp");
    }
}
