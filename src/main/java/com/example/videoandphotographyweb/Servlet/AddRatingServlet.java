package com.example.videoandphotographyweb.Servlet;

import com.example.videoandphotographyweb.Classes.Rating;
import com.example.videoandphotographyweb.Manager.RatingManager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/addRating")
public class AddRatingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ratingId = request.getParameter("ratingId");
        String mediaProId = request.getParameter("mediaProId");
        String username = request.getParameter("username");
        int stars = Integer.parseInt(request.getParameter("stars"));
        String comment = request.getParameter("comment");

        Rating rating = new Rating(ratingId, mediaProId, username, stars, comment);
        RatingManager.addRating(rating);

        response.sendRedirect("viewMediaPros"); // go back to media pro listing after submission
    }
}
