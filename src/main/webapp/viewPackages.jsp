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
  <title>Available Packages</title>
  <style>
    body {
      background: url('assets/img/hero/h1_hero1.png') no-repeat center center fixed;
      background-size: cover;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      margin: 0;
      padding: 50px 20px;
    }

    .container {
      max-width: 1000px;
      margin: auto;
      padding: 40px;
      background: rgba(255, 255, 255, 0.75);
      border-radius: 15px;
      box-shadow: 0 10px 30px rgba(0,0,0,0.2);
      backdrop-filter: blur(8px);
    }

    h2 {
      text-align: center;
      font-size: 32px;
      margin-bottom: 30px;
      background: linear-gradient(90deg, #00b4db, #0083b0);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      font-weight: bold;
      text-shadow: 0 1px 2px rgba(0,0,0,0.1);
    }

    .package-card {
      background: rgba(255, 255, 255, 0.95);
      border-radius: 12px;
      margin-bottom: 25px;
      padding: 25px;
      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
      transition: transform 0.3s ease;
    }

    .package-card:hover {
      transform: translateY(-5px);
    }

    .package-card h3 {
      font-size: 24px;
      color: #222;
      margin-bottom: 10px;
    }

    .package-card p {
      font-size: 16px;
      color: #555;
      margin: 8px 0;
    }

    .price {
      font-size: 18px;
      font-weight: bold;
      color: #00796B;
    }
  </style>
</head>
<body>
<div class="container">
  <h2>Available Event Packages</h2>

  <%
    for (Package p : packageList) {
  %>
  <div class="package-card">
    <h3><%= p.getName() %> (ID: <%= p.getId() %>)</h3>
    <p><%= p.getDescription() %></p>
    <p class="price">Price: LKR <%= String.format("%.2f", p.getPrice()) %></p>
  </div>
  <%
    }
  %>
</div>
</body>
</html>
