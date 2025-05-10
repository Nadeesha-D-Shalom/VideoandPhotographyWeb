<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Booking Successful</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #f0f8ff;
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }

    .message-box {
      background: white;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 0 15px rgba(0,0,0,0.2);
      text-align: center;
    }

    h1 {
      color: #28a745;
    }

    a {
      text-decoration: none;
      color: #007bff;
      font-weight: bold;
    }

    a:hover {
      color: #0056b3;
    }
  </style>
</head>
<body>
<div class="message-box">
  <h1>🎉 Booking Successful!</h1>
  <p>Thank you for booking with us.</p>
  <p><a href="userDashboard.jsp">Go to Home</a></p>
</div>
</body>
</html>
