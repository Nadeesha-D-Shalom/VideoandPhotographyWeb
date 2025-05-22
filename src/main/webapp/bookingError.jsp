<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String error = request.getParameter("error");
    String message = "An unknown error occurred. Please try again.";

    if ("missingFields".equals(error)) {
        message = "Please fill in all required fields before submitting your booking.";
    } else if ("invalidMediaPro".equals(error)) {
        message = "The selected photographer or videographer does not exist.";
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking Error</title>
    <style>
        body {
            background: #fff0f0;
            font-family: Arial, sans-serif;
            text-align: center;
            padding-top: 100px;
        }
        .error-box {
            display: inline-block;
            background: #ffdddd;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 10px rgba(255, 0, 0, 0.2);
        }
        .error-box h1 {
            color: #d8000c;
            margin-bottom: 10px;
        }
        .error-box p {
            font-size: 18px;
            color: #333;
        }
        .error-box a {
            display: inline-block;
            margin-top: 20px;
            background: #0073e6;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 6px;
        }
        .error-box a:hover {
            background: #005bb5;
        }
    </style>
</head>
<body>
<div class="error-box">
    <h1>Booking Failed</h1>
    <p><%= message %></p>
    <a href="addBooking.jsp">Go Back</a>
</div>
</body>
</html>
