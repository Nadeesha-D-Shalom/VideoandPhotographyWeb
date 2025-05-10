<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.videoandphotographyweb.Classes.MediaPro" %>
<%@ page import="com.example.videoandphotographyweb.Manager.MediaProManager" %>
<%
  String id = request.getParameter("id");
  MediaPro m = null;

  for (MediaPro mp : MediaProManager.getAllMediaPros()) {
    if (mp.getId().equals(id)) {
      m = mp;
      break;
    }
  }
  if (m == null) {
%>
<h2 style="text-align:center; color:red;">Media Professional not found.</h2>
<%
    return;
  }
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Edit Media Professional</title>
  <style>
    body {
      background: url('assets/img/hero/h1_hero1.png') no-repeat center center fixed;
      background-size: cover;
      font-family: Arial, sans-serif;
    }

    .form-container {
      width: 500px;
      margin: 100px auto;
      background: rgba(255, 255, 255, 0.95);
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 0 15px rgba(0,0,0,0.2);
    }

    h2 {
      text-align: center;
      margin-bottom: 20px;
      color: #333;
    }

    input, select {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border-radius: 5px;
      border: 1px solid #ccc;
    }

    button {
      width: 100%;
      padding: 10px;
      background-color: #4CAF50;
      color: white;
      border: none;
      border-radius: 5px;
      font-size: 16px;
    }

    button:hover {
      background-color: #388e3c;
    }
  </style>
</head>
<body>
<div class="form-container">
  <h2>Edit Media Professional</h2>
  <form action="updateMediaPro" method="post">
    <input type="hidden" name="id" value="<%= m.getId() %>">
    <input type="text" name="name" value="<%= m.getName() %>" required>
    <input type="text" name="contact" value="<%= m.getContact() %>" required>
    <input type="email" name="email" value="<%= m.getEmail() %>" required>
    <input type="text" name="specialization" value="<%= m.getSpecialization() %>" required>
    <select name="type" required>
      <option value="Photographer" <%= "Photographer".equals(m.getType()) ? "selected" : "" %>>Photographer</option>
      <option value="Videographer" <%= "Videographer".equals(m.getType()) ? "selected" : "" %>>Videographer</option>
      <option value="Dronographer" <%= "Dronographer".equals(m.getType()) ? "selected" : "" %>>Dronographer</option>
    </select>
    <button type="submit">Update</button>
  </form>
</div>
</body>
</html>
