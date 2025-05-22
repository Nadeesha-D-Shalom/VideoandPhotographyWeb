package com.example.videoandphotographyweb.Servlet;

import com.example.videoandphotographyweb.Classes.Package;
import com.example.videoandphotographyweb.Manager.PackageManager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/addPackage")
public class AddPackageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String priceStr = request.getParameter("price");

        double price = Double.parseDouble(priceStr);

        Package p = new Package(id, name, description, price);
        PackageManager.addPackage(p);

        response.sendRedirect("packageAddSuccess.jsp");
    }
}
