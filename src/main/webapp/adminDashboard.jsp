<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<%
  String username = (String) session.getAttribute("username");
  String role = (String) session.getAttribute("role");

  if (username == null || role == null || !role.equals("admin")) {
    response.sendRedirect("login.jsp");
    return;
  }
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Admin Dashboard</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: url('assets/img/hero/h1_hero1.png') no-repeat center center fixed;
      background-size: cover;
      margin: 0;
      padding: 0;
    }

    .dashboard {
      max-width: 800px;
      margin: 60px auto;
      padding: 30px;
      background: rgba(255, 255, 255, 0.85);
      border-radius: 12px;
      box-shadow: 0 0 15px rgba(0,0,0,0.2);
      text-align: center;
    }

    h2 {
      margin-bottom: 10px;
      color: #222;
    }

    .welcome {
      color: #444;
      margin-bottom: 25px;
      font-size: 18px;
    }

    .btn-container {
      display: flex;
      flex-direction: column;
      gap: 15px;
      align-items: center;
    }

    a.button {
      text-decoration: none;
      display: block;
      width: 60%;
      padding: 12px;
      background: #0073e6;
      color: white;
      border-radius: 6px;
      font-weight: bold;
      font-size: 16px;
      transition: background 0.3s;
    }

    a.button:hover {
      background: #005bb5;
    }

    a.logout {
      background: #dc3545 !important;
    }
  </style>
</head>
<body>
<div class="dashboard">
  <h2>🎥 Admin Dashboard</h2>
  <div class="welcome">Welcome, <strong><%= username %></strong></div>
  <div class="btn-container">
    <a href="viewBookings" class="button">📋 View All Bookings</a>
    <a href="cancelBooking.jsp" class="button">🗑 Cancel Booking</a>
    <a href="viewMediaPros" class="button">📊 Sort Photographers by Rating</a>
    <a href="viewAdmins.jsp" class="button">👨🏻‍💼 Add New Admin</a>
    <a href="managePackages.jsp" class="button">🎁 Manage Packages</a>
    <a href="index.html" class="button">🔙 Back to Homepage</a>
    <a href="logout" class="button logout">🚪 Logout</a>
  </div>
</div>
</body>
</html>
