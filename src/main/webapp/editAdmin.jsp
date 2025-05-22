<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String username = request.getParameter("username");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Edit Admin</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: url('assets/img/hero/h1_hero1.png') no-repeat center center fixed;
      padding: 50px;
    }

    .form-box {
      width: 400px;
      margin: auto;
      padding: 30px;
      background: #fff;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    h2 {
      text-align: center;
      margin-bottom: 20px;
    }

    input {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      font-size: 16px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    button {
      width: 100%;
      padding: 10px;
      background-color: #007bff;
      color: white;
      font-size: 16px;
      border: none;
      border-radius: 5px;
    }

    a {
      display: block;
      margin-top: 15px;
      text-align: center;
      color: #333;
      text-decoration: none;
    }
  </style>
</head>
<body>
<div class="form-box">
  <h2>Edit Admin</h2>
  <form action="updateAdmin" method="post">
    <input type="hidden" name="oldUsername" value="<%= username %>">
    <input type="text" name="newUsername" placeholder="New Username" required>
    <input type="password" name="newPassword" placeholder="New Password" required>
    <button type="submit">Update Admin</button>
  </form>
  <a href="viewAdmins.jsp">← Back to Admin List</a>
</div>
</body>
</html>
