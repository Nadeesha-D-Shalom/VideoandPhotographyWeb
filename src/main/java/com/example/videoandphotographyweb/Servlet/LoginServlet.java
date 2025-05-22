package com.example.videoandphotographyweb.Servlet;

import com.example.videoandphotographyweb.Manager.AdminManager;
import com.example.videoandphotographyweb.Manager.UserManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private AdminManager adminManager;
    private UserManager userManager;

    @Override
    public void init() throws ServletException {
        adminManager = new AdminManager();
        userManager = new UserManager();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        if (role == null || username == null || password == null ||
                role.trim().isEmpty() || username.trim().isEmpty() || password.trim().isEmpty()) {
            response.sendRedirect("login.jsp?error=emptyFields");
            return;
        }

        if (role.equals("admin")) {
            if (adminManager.validateAdmin(username, password)) {
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                session.setAttribute("role", "admin");
                response.sendRedirect("adminDashboard.jsp");
            } else {
                response.sendRedirect("login.jsp?error=invalidAdmin");
            }
        } else if (role.equals("user")) {
            if (userManager.validateUser(username, password)) {
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                session.setAttribute("role", "user");
                response.sendRedirect("userDashboard.jsp");
            } else {
                response.sendRedirect("login.jsp?error=invalidUser");
            }
        } else {
            response.sendRedirect("login.jsp?error=invalidRole");
        }
    }
}
