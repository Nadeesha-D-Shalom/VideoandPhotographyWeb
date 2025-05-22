<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.videoandphotographyweb.Classes.MediaPro" %>
<%
  List<MediaPro> mediaPros = (List<MediaPro>) request.getAttribute("mediaPros");
  String role = (String) session.getAttribute("role");
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Media Professionals</title>
  <style>
    body {
      background: url('assets/img/hero/h1_hero1.png') no-repeat center center fixed;
      background-size: cover;
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 40px;
    }

    .container {
      background: rgba(255, 255, 255, 0.95);
      max-width: 1000px;
      margin: auto;
      padding: 30px;
      border-radius: 12px;
      box-shadow: 0 0 12px rgba(0,0,0,0.2);
    }

    h2 {
      text-align: center;
      color: #333;
    }

    .top-btn {
      display: flex;
      justify-content: space-between;
      margin-bottom: 20px;
    }

    .top-btn a,
    .top-btn button {
      text-decoration: none;
      background-color: #4CAF50;
      color: white;
      padding: 10px 15px;
      border-radius: 6px;
      font-weight: bold;
      border: none;
      cursor: pointer;
    }

    .top-btn button {
      background-color: #9c27b0;
    }

    .media-card {
      display: flex;
      align-items: center;
      justify-content: space-between;
      background: #f9f9f9;
      border-radius: 10px;
      padding: 15px;
      margin-bottom: 15px;
      box-shadow: 0 0 8px rgba(0,0,0,0.1);
    }

    .media-card img {
      width: 100px;
      height: 100px;
      border-radius: 50%;
      margin-right: 20px;
      object-fit: cover;
    }

    .media-info {
      flex-grow: 1;
    }

    .media-info h4 {
      margin: 0 0 5px 0;
    }

    .media-info p {
      margin: 2px 0;
    }

    .actions {
      display: flex;
      flex-direction: column;
      gap: 10px;
    }

    .actions a {
      text-decoration: none;
      text-align: center;
      padding: 8px 12px;
      border-radius: 6px;
      font-weight: bold;
      color: white;
    }

    .rate-btn {
      background-color: #ff9800;
    }

    .book-btn {
      background-color: #03a9f4;
    }

    .edit-btn {
      background-color: #2196F3;
    }

    .delete-btn {
      background-color: #f44336;
    }

    .rate-btn:hover {
      background-color: #e68900;
    }

    .book-btn:hover {
      background-color: #0288d1;
    }

    .edit-btn:hover {
      background-color: #1976D2;
    }

    .delete-btn:hover {
      background-color: #c62828;
    }
  </style>
</head>
<body>
<div class="container">
  <h2>Registered Media Professionals</h2>

  <div class="top-btn">
    <% if ("admin".equals(role)) { %>
    <a href="addMediaPro.jsp">+ Add Media Pro</a>
    <% } %>
    <form method="get" action="viewMediaPros">
      <input type="hidden" name="sortBy" value="rating">
      <button type="submit">Sort by Rating</button>
      <a href="adminDashboard.jsp" style="padding:10px 20px; background-color:#af4c4c; color:white; border:none; border-radius:5px; text-decoration:none;">Back to Home</a>

    </form>
  </div>

  <%
    if (mediaPros != null && !mediaPros.isEmpty()) {
      for (MediaPro m : mediaPros) {
        double avg = com.example.videoandphotographyweb.Manager.RatingManager.getAverageRating(m.getId());
        int count = com.example.videoandphotographyweb.Manager.RatingManager.getRatingCount(m.getId());
  %>
  <div class="media-card">
    <img src="images/<%= m.getProfileImage() %>" alt="MediaPro">
    <div class="media-info">
      <h4><%= m.getName() %></h4>
      <p><strong>Type:</strong> <%= m.getType() %></p>
      <p><strong>Specialization:</strong> <%= m.getSpecialization() %></p>
      <p><strong>Contact:</strong> <%= m.getContact() %></p>
      <p><strong>Email:</strong> <%= m.getEmail() %></p>
      <p><strong>Rating:</strong> <%= String.format("%.1f", avg) %> ⭐ (from <%= count %> users)</p>
    </div>
    <div class="actions">
      <a class="rate-btn" href="addRating.jsp?mediaProId=<%= m.getId() %>&name=<%= m.getName() %>">Rate This Media Pro</a>
      <a class="book-btn" href="addBooking.jsp?mediaProId=<%= m.getId() %>">Add Booking</a>
      <% if ("admin".equals(role)) { %>
      <a class="edit-btn" href="editMediaPro.jsp?id=<%= m.getId() %>">Edit</a>
      <a class="delete-btn" href="deleteMediaPro?id=<%= m.getId() %>" onclick="return confirm('Are you sure you want to delete this Media Pro?');">Delete</a>
      <% } %>
    </div>
  </div>
  <%
    }
  } else {
  %>
  <p style="text-align:center;">No media professionals available.</p>
  <%
    }
  %>
</div>
</body>
</html>
