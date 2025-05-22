<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Add Media Pro</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: url('assets/img/hero/h1_hero1.png') no-repeat center center fixed;
      background-size: cover;
      margin: 0;
      padding: 0;
    }

    .form-container {
      max-width: 500px;
      margin: 80px auto;
      padding: 30px;
      background: rgba(255, 255, 255, 0.95);
      border-radius: 12px;
      box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
    }

    .form-container h2 {
      text-align: center;
      margin-bottom: 20px;
      color: #333;
    }

    .form-container input, .form-container select {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border-radius: 6px;
      border: 1px solid #ccc;
    }

    .form-container button {
      width: 100%;
      padding: 10px;
      background-color: #4CAF50;
      color: white;
      border: none;
      border-radius: 6px;
      font-weight: bold;
      cursor: pointer;
    }

    .form-container button:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>

<div class="form-container">
  <h2>Add Media Professional</h2>
  <form action="addMediaPro" method="post">
    <input type="text" name="id" placeholder="ID" required>
    <input type="text" name="name" placeholder="Full Name" required>
    <input type="text" name="contact" placeholder="Contact Number" required>
    <input type="email" name="email" placeholder="Email Address" required>
    <input type="text" name="specialization" placeholder="Specialization (e.g., Wedding, Drone Shot)" required>
    <select name="type" required>
      <option value="">Select Role Type</option>
      <option value="Photographer">Photographer</option>
      <option value="Videographer">Videographer</option>
      <option value="Dronographer">Dronographer</option>
    </select>
    <button type="submit">Add Media Pro</button>
    <br><br>
    <a href="adminDashboard.jsp" style="padding:10px 20px; background-color:#af4c4c; color:white; border:none; border-radius:5px; text-decoration:none;">Back to Home</a>

  </form>

</div>

</body>
</html>
