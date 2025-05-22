package com.example.videoandphotographyweb.Servlet;

import com.example.videoandphotographyweb.Classes.Admin;
import com.example.videoandphotographyweb.Manager.AdminManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/addAdmin")
public class AddAdminServlet extends HttpServlet {
    private AdminManager adminManager;

    @Override
    public void init() throws ServletException {
        adminManager = new AdminManager();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("ADusername");
        String password = request.getParameter("ADpassword");

        if (username == null || password == null || username.trim().isEmpty() || password.trim().isEmpty()) {
            response.sendRedirect("bookingError.jsp?error=missingFields");
            return;
        }

        try {
            Admin admin = new Admin(username, password);
            adminManager.addAdmin(admin);
            response.sendRedirect("adminAddSuccess.jsp");
        } catch (IllegalArgumentException e) {
            response.sendRedirect("bookingError.jsp?error=duplicateUsername");
        }
    }
}
