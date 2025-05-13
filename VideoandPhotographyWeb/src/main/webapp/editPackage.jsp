<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.videoandphotographyweb.Classes.Package" %>
<%@ page import="com.example.videoandphotographyweb.Manager.PackageManager" %>
<%
  String id = request.getParameter("id");
  Package selected = null;

  for (Package p : PackageManager.getAllPackages()) {
    if (p.getId().equals(id)) {
      selected = p;
      break;
    }
  }

  if (selected == null) {
%>
<h2 style="color: red; text-align:center;">Package not found.</h2>
<%
    return;
  }
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Edit Package</title>
  <style>
    body {
      background: url('assets/img/hero/h1_hero1.png') no-repeat center center fixed;
      background-size: cover;
      font-family: Arial, sans-serif;
      padding: 50px;
    }

    .form-container {
      max-width: 500px;
      margin: auto;
      background: rgba(255,255,255,0.9);
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 0 15px rgba(0,0,0,0.2);
    }

    h2 {
      text-align: center;
      margin-bottom: 20px;
      color: #333;
    }

    input, textarea {
      width: 100%;
      padding: 10px;
      margin: 8px 0;
      border-radius: 6px;
      border: 1px solid #ccc;
    }

    button {
      width: 100%;
      padding: 12px;
      background-color: #2196F3;
      color: white;
      border: none;
      font-size: 16px;
      border-radius: 6px;
    }

    button:hover {
      background-color: #1976D2;
    }
  </style>
</head>
<body>
<div class="form-container">
  <h2>Edit Package</h2>
  <form action="updatePackage" method="post">
    <input type="hidden" name="id" value="<%= selected.getId() %>">
    <input type="text" name="name" value="<%= selected.getName() %>" required>
    <textarea name="description" rows="3" required><%= selected.getDescription() %></textarea>
    <input type="number" name="price" step="0.01" value="<%= selected.getPrice() %>" required>
    <button type="submit">Update Package</button>
  </form>
</div>
</body>
</html>
