<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Package Added</title>
  <style>
    body {
      background: url('assets/img/hero/h1_hero1.png') no-repeat center center fixed;
      background-size: cover;
      font-family: Arial, sans-serif;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }

    .success-box {
      background: rgba(255, 255, 255, 0.9);
      padding: 40px;
      border-radius: 15px;
      box-shadow: 0 0 12px rgba(0,0,0,0.2);
      text-align: center;
    }

    .success-box h2 {
      color: #28a745;
      margin-bottom: 15px;
    }

    .success-box p {
      font-size: 16px;
      margin-bottom: 25px;
    }

    .success-box a {
      text-decoration: none;
      background: #4CAF50;
      color: white;
      padding: 10px 20px;
      border-radius: 6px;
      font-weight: bold;
    }

    .success-box a:hover {
      background: #388e3c;
    }
  </style>
</head>
<body>
<div class="success-box">
  <h2>✅ Package Added Successfully!</h2>
  <p>Your event package has been saved to the system.</p>
  <a href="managePackages.jsp">Back to Package Manager</a>
</div>
</body>
</html>
