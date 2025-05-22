package com.example.videoandphotographyweb.Servlet;

import com.example.videoandphotographyweb.Classes.Package;
import com.example.videoandphotographyweb.Manager.PackageManager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/updatePackage")
public class UpdatePackageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String priceStr = request.getParameter("price");

        double price = Double.parseDouble(priceStr);

        Package updated = new Package(id, name, description, price);
        PackageManager.updatePackage(updated);

        response.sendRedirect("managePackages.jsp?success=updated");
    }
}
