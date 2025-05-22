package com.example.videoandphotographyweb.Servlet;

import com.example.videoandphotographyweb.Classes.MediaPro;
import com.example.videoandphotographyweb.Manager.MediaProManager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/editPhotographer")
public class EditPhotographerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        List<MediaPro> list = MediaProManager.getAllMediaPros();

        for (MediaPro p : list) {
            if (p.getId().equals(id)) {
                request.setAttribute("photographer", p);
                break;
            }
        }

        request.getRequestDispatcher("editPhotographer.jsp").forward(request, response);
    }
}
