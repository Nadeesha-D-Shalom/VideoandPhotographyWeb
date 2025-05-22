<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String mediaProId = request.getParameter("mediaProId");
  String name = request.getParameter("name");
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Add Rating</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: url('assets/img/hero/h1_hero1.png') no-repeat center center fixed;
      background-size: cover;
      margin: 0;
      padding: 0;
    }

    .form-container {
      max-width: 500px;
      margin: 80px auto;
      padding: 30px;
      background: rgba(255, 255, 255, 0.95);
      border-radius: 12px;
      box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
    }

    .form-container h2 {
      text-align: center;
      margin-bottom: 20px;
      color: #333;
    }

    .form-container input, .form-container textarea, .form-container select {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border-radius: 6px;
      border: 1px solid #ccc;
    }

    .form-container button {
      width: 100%;
      padding: 10px;
      background-color: #4CAF50;
      color: white;
      border: none;
      border-radius: 6px;
      font-weight: bold;
      cursor: pointer;
    }

    .form-container button:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>

<div class="form-container">
  <h2>Rate Media Professional</h2>
  <form action="addRating" method="post">
    <input type="text" name="ratingId" placeholder="Rating ID (e.g., R001)" required>
    <input type="text" name="mediaProId" value="<%= mediaProId != null ? mediaProId : "" %>" placeholder="MediaPro ID" readonly required>
    <input type="text" value="<%= name != null ? name : "" %>" placeholder="MediaPro Name" readonly>
    <input type="text" name="username" placeholder="Your Username" required>

    <select name="stars" required>
      <option value="">Select Star Rating</option>
      <option value="5">⭐⭐⭐⭐⭐ (5 Stars)</option>
      <option value="4">⭐⭐⭐⭐ (4 Stars)</option>
      <option value="3">⭐⭐⭐ (3 Stars)</option>
      <option value="2">⭐⭐ (2 Stars)</option>
      <option value="1">⭐ (1 Star)</option>
    </select>

    <textarea name="comment" rows="4" placeholder="Write your comment..." required></textarea>

    <button type="submit">Submit Rating</button>
  </form>
</div>

</body>
</html>
