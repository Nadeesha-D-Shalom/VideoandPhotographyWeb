package com.example.videoandphotographyweb.Servlet;

import com.example.videoandphotographyweb.Classes.Admin;
import com.example.videoandphotographyweb.Manager.AdminManager;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import jakarta.servlet.ServletException;

import java.io.IOException;

@WebServlet("/updateAdmin")
public class UpdateAdminServlet extends HttpServlet {
    private AdminManager manager;

    @Override
    public void init() {
        manager = new AdminManager();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String oldUsername = request.getParameter("oldUsername");
        String newUsername = request.getParameter("newUsername");
        String newPassword = request.getParameter("newPassword");

        if (oldUsername != null && newUsername != null && newPassword != null) {
            Admin updated = new Admin(newUsername, newPassword);
            manager.updateAdmin(oldUsername, updated);
        }

        response.sendRedirect("viewAdmins.jsp");
    }
}
