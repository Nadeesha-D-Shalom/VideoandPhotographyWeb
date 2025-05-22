package com.example.videoandphotographyweb.Servlet;

import com.example.videoandphotographyweb.Classes.MediaPro;
import com.example.videoandphotographyweb.Manager.MediaProManager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.Random;

@WebServlet("/addMediaPro")
public class AddMediaProServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String contact = request.getParameter("contact");
        String email = request.getParameter("email");
        String specialization = request.getParameter("specialization");
        String type = request.getParameter("type");

        // ✅ Randomly assign profile image (img1.png - img8.png)
        String[] images = {"img1.png", "img2.png", "img3.png", "img4.png", "img5.png", "img6.png", "img7.png", "img8.png"};
        String profileImage = images[new Random().nextInt(images.length)];

        MediaPro mediaPro = new MediaPro(id, name, contact, email, specialization, type, profileImage);
        MediaProManager.addMediaPro(mediaPro);

        response.sendRedirect("registrationSuccess.jsp");
    }
}
