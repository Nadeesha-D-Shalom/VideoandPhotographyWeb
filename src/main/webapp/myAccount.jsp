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
  <title>My Account</title>
  <style>
    body {
      font-family: Arial;
      background: url('assets/img/hero/h1_hero1.png') no-repeat center center fixed;
      padding: 40px;
    }
    .card { max-width: 500px; margin: auto; background: white; padding: 25px; border-radius: 10px; box-shadow: 0 0 15px rgba(0,0,0,0.1); }
    h2 { text-align: center; margin-bottom: 25px; }
    .btn { display: block; margin: 15px 0; padding: 12px; background: #007bff; color: white; text-align: center; text-decoration: none; border-radius: 5px; }
    .btn-danger { background: #dc3545; }
  </style>
</head>
<body>
<div class="card">
  <h2>My Account</h2>
  <p><strong>Username:</strong> <%= username %></p>

  <a class="btn" href="updatePassword.jsp">🔒 Update Password</a>
  <a class="btn btn-danger" href="deleteAccount.jsp">🗑 Delete Account</a>
</div>
</body>
</html>
