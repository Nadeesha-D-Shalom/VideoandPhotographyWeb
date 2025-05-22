package com.example.videoandphotographyweb.Servlet;

import com.example.videoandphotographyweb.Manager.PackageManager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/deletePackage")
public class DeletePackageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");

        PackageManager.deletePackage(id);
        response.sendRedirect("managePackages.jsp");
    }
}
