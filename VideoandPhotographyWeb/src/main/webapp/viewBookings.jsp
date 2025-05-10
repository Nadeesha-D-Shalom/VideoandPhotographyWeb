<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Queue" %>
<%@ page import="com.example.videoandphotographyweb.Classes.Booking" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>All Bookings</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #eef2f3;
    }

    h2 {
      text-align: center;
      margin-top: 30px;
    }

    table {
      width: 90%;
      margin: 20px auto;
      border-collapse: collapse;
      background: white;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    th, td {
      padding: 12px;
      border: 1px solid #ddd;
      text-align: center;
    }

    th {
      background-color: #0073e6;
      color: white;
    }
  </style>
</head>
<body>
<h2>📸 All Event Bookings</h2>
<table>
  <tr>
    <th>Customer Name</th>
    <th>Event Date</th>
    <th>Event Type</th>
    <th>City</th>
    <th>Postal Code</th>
    <th>Contact Number</th>
    <th>Photographer Name</th>
  </tr>
  <%
    Queue<Booking> bookings = (Queue<Booking>) request.getAttribute("bookings");
    if (bookings != null && !bookings.isEmpty()) {
      for (Booking b : bookings) {
  %>
  <tr>
    <td><%= b.getCustomerName() %></td>
    <td><%= b.getEventDate() %></td>
    <td><%= b.getEventType() %></td>
    <td><%= b.getCity() %></td>
    <td><%= b.getAddress() %></td>
    <td><%= b.getContactNumber() %></td>
    <td><%= b.getMediaProID() %></td>
  </tr>
  <%
    }
  } else {
  %>
  <tr>
    <td colspan="7">No bookings found.</td>
  </tr>
  <% } %>
</table>
</body>
</html>
