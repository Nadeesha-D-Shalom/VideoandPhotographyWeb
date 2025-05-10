<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String mediaProId = request.getParameter("mediaProId"); // capture ID from URL
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Book Photography/Videography</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      background: url('assets/img/hero/h1_hero1.png') no-repeat center center fixed;
      background-size: cover;
      font-family: Arial, sans-serif;
    }

    .form-container {
      width: 400px;
      margin: 100px auto;
      background: rgba(255, 255, 255, 0.95);
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 0 15px rgba(0,0,0,0.2);
    }

    h2 {
      text-align: center;
      color: #333;
      margin-bottom: 20px;
    }

    input, select {
      width: 100%;
      padding: 10px;
      margin: 8px 0;
      border-radius: 5px;
      border: 1px solid #ccc;
    }

    button {
      width: 100%;
      padding: 10px;
      background-color: #0073e6;
      color: white;
      border: none;
      border-radius: 5px;
      font-size: 16px;
      cursor: pointer;
      margin-top: 10px;
    }

    button:hover {
      background-color: #005bb5;
    }
  </style>
</head>
<body>
<div class="form-container">
  <h2>Book Your Event</h2>
  <form action="addBooking" method="post">
    <input type="text" name="customerName" placeholder="Your Name" required>
    <input type="date" name="eventDate" required>
    <select name="eventType" required>
      <option value="">Select Event Type</option>
      <option value="Wedding">Wedding</option>
      <option value="Birthday">Birthday</option>
      <option value="Corporate">Corporate</option>
      <option value="Other">Other</option>
    </select>
    <input type="text" name="city" placeholder="Your City" required>
    <input type="text" name="address" placeholder="Postal Code" required>
    <input type="text" name="contactNumber" placeholder="Your Contact Number" required>
    <input type="text" name="mediaProID" placeholder="Photographer or Videographer ID" value="<%= mediaProId != null ? mediaProId : "" %>" required>

    <button type="submit">Book Now</button>
  </form>
</div>
</body>
</html>
