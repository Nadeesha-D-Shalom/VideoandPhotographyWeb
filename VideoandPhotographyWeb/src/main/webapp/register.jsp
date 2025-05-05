<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Register</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      background: url('assets/img/hero/h1_hero1.png') no-repeat center center fixed;
      background-size: cover;
      font-family: Arial, sans-serif;
    }

    .register-container {
      width: 450px;
      margin: 80px auto;
      background: rgba(255, 255, 255, 0.96);
      padding: 35px;
      border-radius: 14px;
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.25);
    }

    h2 {
      text-align: center;
      color: #222;
      margin-bottom: 25px;
    }

    input {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border-radius: 6px;
      border: 1px solid #ccc;
    }

    button {
      width: 100%;
      padding: 12px;
      background-color: #0073e6;
      color: white;
      border: none;
      border-radius: 6px;
      font-size: 17px;
      cursor: pointer;
      margin-top: 10px;
    }

    button:hover {
      background-color: #005bb5;
    }

    .links {
      margin-top: 15px;
      text-align: center;
    }

    .links a {
      text-decoration: none;
      color: #0073e6;
    }

    .error {
      color: red;
      font-weight: bold;
      margin-bottom: 10px;
      text-align: center;
    }
  </style>
</head>
<body>
<div class="register-container">
  <h2>📝 Register</h2>

  <%
    String error = (String) request.getAttribute("errorMessage");
    if (error != null) {
  %>
  <div class="error"><%= error %></div>
  <% } %>

  <form action="registerServlet" method="post">
    <input type="text" name="username" placeholder="Username" required>
    <input type="password" name="password" placeholder="Password" required>
    <input type="text" name="contactNumber" placeholder="Contact Number" required>
    <input type="email" name="email" placeholder="Email Address" required>
    <button type="submit">Register</button>

    <div class="links">
      Already have an account? <a href="login.jsp">Login here</a><br>
      <a href="index.html">← Back to Home</a>
    </div>
  </form>
</div>
</body>
</html>
