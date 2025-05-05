package com.example.videoandphotographyweb.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false); // Do not create if doesn't exist
        if (session != null) {
            session.invalidate(); // Clear session
        }
        response.sendRedirect("login.jsp");
    }
}
