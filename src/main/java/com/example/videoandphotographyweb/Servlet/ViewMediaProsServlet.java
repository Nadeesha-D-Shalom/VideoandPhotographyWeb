package com.example.videoandphotographyweb.Servlet;

import com.example.videoandphotographyweb.Classes.MediaPro;
import com.example.videoandphotographyweb.Manager.MediaProManager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet("/viewMediaPros")
public class ViewMediaProsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sortBy = request.getParameter("sortBy");
        List<MediaPro> mediaPros;

        if ("rating".equalsIgnoreCase(sortBy)) {
            mediaPros = MediaProManager.getMediaProsSortedByRating(); // Bubble sort
        } else {
            mediaPros = MediaProManager.getAllMediaPros();
        }

        request.setAttribute("mediaPros", mediaPros);
        request.getRequestDispatcher("viewMediaPros.jsp").forward(request, response);
    }
}
