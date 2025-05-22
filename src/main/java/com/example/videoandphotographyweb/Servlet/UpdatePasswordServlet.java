package com.example.videoandphotographyweb.Servlet;

import com.example.videoandphotographyweb.Manager.UserManager;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import jakarta.servlet.ServletException;
import java.io.IOException;

@WebServlet("/updatePassword")
public class UpdatePasswordServlet extends HttpServlet {
    private UserManager manager;

    @Override
    public void init() {
        manager = new UserManager();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        String username = (String) session.getAttribute("username");
        String oldPassword = request.getParameter("oldPassword");
        String newPassword = request.getParameter("newPassword");

        if (manager.updatePassword(username, oldPassword, newPassword)) {
            response.sendRedirect("myAccount.jsp");
        } else {
            request.setAttribute("errorMessage", "Old password incorrect.");
            request.getRequestDispatcher("updatePassword.jsp").forward(request, response);
        }
    }
}
