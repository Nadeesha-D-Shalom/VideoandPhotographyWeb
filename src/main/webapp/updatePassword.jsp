<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<%
  String username = (String) session.getAttribute("username");
  if (username == null) {
    response.sendRedirect("login.jsp");
    return;
  }
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Update Password</title>
  <style>
    body {
      font-family: Arial;
      background: url('assets/img/hero/h1_hero1.png') no-repeat center center fixed;
      padding: 40px;
    }
    .form-box { max-width: 500px; margin: auto; background: white; padding: 25px; border-radius: 10px; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
    h2 { text-align: center; margin-bottom: 20px; }
    input { width: 100%; padding: 10px; margin: 10px 0; border-radius: 5px; border: 1px solid #ccc; }
    button { width: 100%; padding: 12px; background: #007bff; color: white; border: none; border-radius: 5px; }
  </style>
</head>
<body>
<div class="form-box">
  <h2>Update Password</h2>
  <form action="updatePassword" method="post">
    <input type="password" name="oldPassword" placeholder="Current Password" required>
    <input type="password" name="newPassword" placeholder="New Password" required>
    <button type="submit">Update</button>
  </form>
</div>
</body>
</html>
