<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<%
    String username = (String) session.getAttribute("username");
    String role = (String) session.getAttribute("role");

    if (username == null || role == null || !role.equals("admin")) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Cancel Booking</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('assets/img/hero/h1_hero1.png') no-repeat center center fixed;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 500px;
            margin: 100px auto;
            background: white;
            padding: 30px;
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
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #dc3545;
            border: none;
            color: white;
            font-weight: bold;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #b52a37;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>🗑 Cancel a Booking</h2>
    <form action="cancelBooking" method="post">
        <input type="text" name="customerName" placeholder="Customer Name" required>
        <input type="date" name="eventDate" required>
        <button type="submit">Cancel Booking</button>
    </form>
    <br>
    <a href="adminDashboard.jsp" style="padding:10px 20px; background-color:#af4c4c; color:white; border:none; border-radius:5px; text-decoration:none;">Back to Home</a>

</div>
</body>
</html>
