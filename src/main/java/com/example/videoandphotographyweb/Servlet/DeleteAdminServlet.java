package com.example.videoandphotographyweb.Servlet;

import com.example.videoandphotographyweb.Manager.AdminManager;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import jakarta.servlet.ServletException;

import java.io.IOException;

@WebServlet("/deleteAdmin")
public class DeleteAdminServlet extends HttpServlet {
    private AdminManager manager;

    @Override
    public void init() {
        manager = new AdminManager();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        if (username != null && !username.trim().isEmpty()) {
            manager.deleteAdminByUsername(username);
        }
        response.sendRedirect("viewAdmins.jsp");
    }
}
