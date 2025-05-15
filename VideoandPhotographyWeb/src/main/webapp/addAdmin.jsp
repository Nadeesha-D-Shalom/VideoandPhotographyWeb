<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Add New Admin</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
      background: url('assets/img/hero/h1_hero1.png') no-repeat center center fixed;
      background-size: cover;
    }

    .form-container {
      width: 400px;
      margin: 100px auto;
      background: rgba(255, 255, 255, 0.95);
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 0 15px rgba(0,0,0,0.3);
    }

    h2 {
      text-align: center;
      color: #333;
    }

    input[type="text"],
    input[type="password"] {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border-radius: 5px;
      border: 1px solid #aaa;
      font-size: 16px;
    }

    button {
      width: 100%;
      padding: 10px;
      background-color: #4CAF50;
      color: white;
      font-size: 16px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      margin-top: 10px;
    }

    button:hover {
      background-color: #45a049;
    }

    .back-link {
      display: block;
      text-align: center;
      margin-top: 15px;
      color: #333;
      text-decoration: none;
    }

    .back-link:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>

<div class="form-container">
  <h2>Add New Admin</h2>
  <form action="addAdmin" method="post">
    <input type="text" name="ADusername" placeholder="Enter Username" required>
    <input type="password" name="ADpassword" placeholder="Enter Password" required>
    <button type="submit">Add Admin</button>
  </form>
  <a href="adminDashboard.jsp" class="back-link">← Back to Dashboard</a>
</div>

</body>
</html>
