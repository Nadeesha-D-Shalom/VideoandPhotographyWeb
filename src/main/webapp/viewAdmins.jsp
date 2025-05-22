<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, com.example.videoandphotographyweb.Classes.Admin, com.example.videoandphotographyweb.Manager.AdminManager" %>
<%
    AdminManager manager = new AdminManager();
    List<Admin> adminList = manager.getAdmins();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registered Admins</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('assets/img/hero/h1_hero1.png') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 900px;
            margin: 50px auto;
            background: rgba(255, 255, 255, 0.95);
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }

        .top-bar {
            display: flex;
            justify-content: space-between;
            margin-bottom: 25px;
        }

        .add-btn, .back-btn {
            background-color: #28a745;
            color: white;
            padding: 10px 18px;
            text-decoration: none;
            font-weight: bold;
            border-radius: 6px;
        }

        .back-btn {
            background-color: #b02a37;
        }

        .admin-card {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            margin-bottom: 15px;
        }

        .admin-info {
            flex-grow: 1;
        }

        .admin-info p {
            margin: 5px 0;
        }

        .btns {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .edit-btn, .delete-btn {
            padding: 8px 15px;
            border: none;
            border-radius: 5px;
            color: white;
            font-weight: bold;
            text-align: center;
            cursor: pointer;
            text-decoration: none;
        }

        .edit-btn {
            background-color: #007bff;
        }

        .delete-btn {
            background-color: #dc3545;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="top-bar">
        <a href="addAdmin.jsp" class="add-btn">+ Add Admin</a>
        <a href="adminDashboard.jsp" class="back-btn">Back to Home</a>
    </div>

    <h2>Registered Admins</h2>

    <%
        if (adminList != null && !adminList.isEmpty()) {
            for (Admin admin : adminList) {
    %>
    <div class="admin-card">
        <div class="admin-info">
            <p><strong>Username:</strong> <%= admin.getUsername() %></p>
            <p><strong>Password:</strong> ********</p>
        </div>
        <div class="btns">
            <a href="editAdmin.jsp?username=<%= admin.getUsername() %>" class="edit-btn">Edit</a>
            <a href="deleteAdmin?username=<%= admin.getUsername() %>" class="delete-btn">Delete</a>
        </div>
    </div>
    <%
        }
    } else {
    %>
    <p style="text-align:center;">No admins found.</p>
    <%
        }
    %>
</div>
</body>
</html>
