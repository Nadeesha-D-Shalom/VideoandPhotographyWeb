package com.example.videoandphotographyweb.Servlet;

import com.example.videoandphotographyweb.Manager.MediaProManager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/deleteMediaPro")
public class DeleteMediaProServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        MediaProManager.deleteMediaPro(id);
        response.sendRedirect("viewMediaPros");
    }
}
