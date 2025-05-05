package com.example.videoandphotographyweb.Servlet;

import com.example.videoandphotographyweb.Classes.User;
import com.example.videoandphotographyweb.Manager.UserManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.regex.Pattern;

@WebServlet("/registerServlet")
public class UserRegistrationServlet extends HttpServlet {
    private static final String EMAIL_REGEX = "^[A-Za-z0-9+_.-]+@(.+)$";
    private static final String PHONE_REGEX = "^\\d{10}$";
    private UserManager userManager;

    @Override
    public void init() throws ServletException {
        userManager = new UserManager();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String contactNumber = request.getParameter("contactNumber");
        String email = request.getParameter("email");

        if (!validateInputs(username, password, contactNumber, email)) {
            request.setAttribute("errorMessage", "All fields are required.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        if (!Pattern.matches(EMAIL_REGEX, email)) {
            request.setAttribute("errorMessage", "Invalid email format.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        if (!Pattern.matches(PHONE_REGEX, contactNumber)) {
            request.setAttribute("errorMessage", "Invalid phone number format.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        try {
            User newUser = new User(username, password, contactNumber, email);
            userManager.addUser(newUser);
            userManager.saveToFile();
            response.sendRedirect("login.jsp");
        } catch (IllegalArgumentException e) {
            request.setAttribute("errorMessage", e.getMessage());
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }

    private boolean validateInputs(String... inputs) {
        for (String input : inputs) {
            if (input == null || input.trim().isEmpty()) return false;
        }
        return true;
    }
}
