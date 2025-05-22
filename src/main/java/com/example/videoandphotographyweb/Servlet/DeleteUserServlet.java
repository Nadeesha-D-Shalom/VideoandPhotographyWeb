package com.example.videoandphotographyweb.Servlet;

import com.example.videoandphotographyweb.Manager.UserManager;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import jakarta.servlet.ServletException;
import java.io.IOException;

@WebServlet("/deleteUser")
public class DeleteUserServlet extends HttpServlet {
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
        String password = request.getParameter("password");

        if (manager.deleteUser(username, password)) {
            session.invalidate();
            response.sendRedirect("index.html");
        } else {
            request.setAttribute("errorMessage", "Password incorrect.");
            request.getRequestDispatcher("deleteAccount.jsp").forward(request, response);
        }
    }
}
