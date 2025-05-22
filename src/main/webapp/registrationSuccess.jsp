<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Registration Successful</title>
  <style>
    body {
      background: url('images/logWall.jpg') no-repeat center center fixed;
      background-size: cover;
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }

    .success-box {
      max-width: 500px;
      margin: 100px auto;
      padding: 30px;
      background: rgba(255, 255, 255, 0.95);
      text-align: center;
      border-radius: 12px;
      box-shadow: 0 0 15px rgba(0,0,0,0.2);
    }

    .success-box h2 {
      color: #4CAF50;
      margin-bottom: 15px;
    }

    .success-box p {
      font-size: 16px;
      color: #333;
    }

    .success-box a {
      display: inline-block;
      margin: 10px;
      padding: 10px 20px;
      background-color: #2196F3;
      color: white;
      text-decoration: none;
      border-radius: 6px;
      font-weight: bold;
    }

    .success-box a:hover {
      background-color: #0b7dda;
    }

    .home-btn {
      background-color: #4CAF50;
    }

    .home-btn:hover {
      background-color: #3e8e41;
    }
  </style>
</head>
<body>
<div class="success-box">
  <h2>Registration Successful 🎉</h2>
  <p>Your details have been saved successfully.</p>
  <a href="login.jsp">Go to Login</a>
  <a href="adminDashboard.jsp" class="home-btn">Back to Home</a>
</div>
</body>
</html>
