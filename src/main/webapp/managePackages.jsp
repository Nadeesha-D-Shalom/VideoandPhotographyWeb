<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.videoandphotographyweb.Classes.Package" %>
<%@ page import="com.example.videoandphotographyweb.Manager.PackageManager" %>
<%
  List<Package> packageList = PackageManager.getAllPackages();
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Manage Packages</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: url('assets/img/hero/h1_hero1.png') no-repeat center center fixed;
      background-size: cover;
      margin: 0;
      padding: 20px;
    }

    .container {
      max-width: 900px;
      margin: auto;
      background: rgba(255, 255, 255, 0.73);
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 0 15px rgba(0,0,0,0.1);
    }

    h2 {
      text-align: center;
      margin-bottom: 25px;
    }

    form input, form textarea {
      width: 100%;
      padding: 10px;
      margin: 8px 0;
      border: 1px solid #ccc;
      border-radius: 6px;
    }

    form button {
      padding: 10px 20px;
      background-color: #4CAF50;
      color: white;
      border: none;
      border-radius: 6px;
      font-size: 16px;
      cursor: pointer;
    }

    form button:hover {
      background-color: #388e3c;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 25px;
    }

    th, td {
      border: 1px solid #ddd;
      padding: 12px;
      text-align: center;
    }

    th {
      background-color: #f2f2f2;
    }

    .delete-btn {
      background-color: #f44336;
      color: white;
      padding: 6px 14px;
      border: none;
      border-radius: 5px;
      margin-right: 4px;
    }

    .delete-btn:hover {
      background-color: #d32f2f;
    }

    .edit-btn {
      background-color: #2196F3;
      color: white;
      padding: 6px 14px;
      border: none;
      border-radius: 5px;
    }

    .edit-btn:hover {
      background-color: #1976D2;
    }
  </style>
</head>
<body>
<div class="container">
  <h2>Manage Event Packages</h2>

  <form action="addPackage" method="post">
    <input type="text" name="id" placeholder="Package ID" required>
    <input type="text" name="name" placeholder="Package Name" required>
    <textarea name="description" placeholder="Description" rows="3" required></textarea>
    <input type="number" name="price" step="0.01" placeholder="Price (LKR)" required>
    <button type="submit">Add Package</button>

    <a href="adminDashboard.jsp" style="padding:10px 20px; background-color:#af4c4c; color:white; border:none; border-radius:5px; text-decoration:none;">Back to Home</a>
  </form>

  <table>
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Description</th>
      <th>Price (LKR)</th>
      <th>Action</th>
    </tr>
    <%
      for (Package p : packageList) {
    %>
    <tr>
      <td><%= p.getId() %></td>
      <td><%= p.getName() %></td>
      <td><%= p.getDescription() %></td>
      <td><%= String.format("%.2f", p.getPrice()) %></td>
      <td>
        <form action="deletePackage" method="post" style="display:inline;">
          <input type="hidden" name="id" value="<%= p.getId() %>">
          <button type="submit" class="delete-btn">Delete</button>
        </form>
        <form action="editPackage.jsp" method="get" style="display:inline;">
          <input type="hidden" name="id" value="<%= p.getId() %>">
          <button type="submit" class="edit-btn">Edit</button>
        </form>
      </td>
    </tr>
    <% } %>
  </table>
</div>
</body>
</html>
