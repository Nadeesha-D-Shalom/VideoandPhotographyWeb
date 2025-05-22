package com.example.videoandphotographyweb.Servlet;

import com.example.videoandphotographyweb.Classes.MediaPro;
import com.example.videoandphotographyweb.Manager.MediaProManager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/updateMediaPro")
public class UpdateMediaProServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String contact = request.getParameter("contact");
        String email = request.getParameter("email");
        String specialization = request.getParameter("specialization");
        String type = request.getParameter("type");

        // Get existing profile image from file
        String profileImage = MediaProManager.getImageById(id);

        // Create updated MediaPro
        MediaPro updated = new MediaPro(id, name, contact, email, specialization, type, profileImage);
        MediaProManager.updateMediaPro(updated);

        response.sendRedirect("viewMediaPros");
    }
}
