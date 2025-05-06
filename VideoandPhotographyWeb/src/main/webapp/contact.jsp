<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Contact Us</title>

  <!-- AOS CSS -->
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      margin: 0;
      padding: 0;
      background-color: #e5e7eb;
      overflow-x: hidden;
    }

    .drone {
      position: absolute;
      width: 60px;
      top: 10%;
      animation: flyDrone 25s linear infinite;
      z-index: 10;
    }

    @keyframes flyDrone {
      0% { left: -80px; transform: rotate(10deg); }
      50% { transform: rotate(-10deg); }
      100% { left: 110%; transform: rotate(10deg); }
    }

    .contact-section {
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 60px 20px;
    }

    .contact-container {
      background-color: #fff;
      display: flex;
      max-width: 1000px;
      width: 100%;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
      border-radius: 12px;
      overflow: hidden;
    }

    .contact-image {
      width: 50%;
      background-color: #000;
    }

    .contact-image img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      border-radius: 12px 0 0 12px;
    }

    .contact-info {
      width: 50%;
      padding: 40px 30px;
      background-color: #f9fafb;
    }

    .contact-info h2 {
      font-size: 30px;
      margin-bottom: 15px;
      color: #111827;
    }

    .contact-info p.description {
      font-size: 15px;
      color: #374151;
      margin-bottom: 25px;
    }

    .contact-info hr {
      width: 50px;
      height: 3px;
      background-color: #f59e0b;
      border: none;
      margin: 20px 0;
    }

    .contact-info p {
      font-size: 15px;
      margin: 10px 0;
    }

    .contact-info strong {
      color: #111;
    }

    .contact-info a {
      color: #2563eb;
      text-decoration: none;
    }
  </style>
</head>
<body>

<!-- Flying Drone -->
<img src="https://cdn-icons-png.flaticon.com/512/2933/2933923.png" class="drone" alt="Flying Drone" />

<div class="contact-section" data-aos="fade-up" data-aos-delay="200">
  <div class="contact-container">
    <!-- LEFT IMAGE -->
    <div class="contact-image">
      <img src="assets/img/gallery/visit_bg.png" alt="Contact Drone">
    </div>

    <!-- RIGHT CONTENT -->
    <div class="contact-info">
      <h2>Contact Us</h2>
      <p class="description">We are here to meet any business need and to promote your company online!</p>
      <hr>
      <p><strong>Phone:</strong> +(94) 112 448 55 55</p>
      <p><strong>Location:</strong> 75 Street Malabe, 63025</p>
      <p><strong>Mail:</strong> <a href="mailto:video.hub1@gmail.com">video.hub1@gmail.com</a></p>
      <p><strong>Image from:</strong> <a href="https://nadeesha-d-shalom.github.io/Nadeesha_UI.github.io/" target="_blank">WebSite</a></p>
    </div>
  </div>
</div>

<!-- AOS Script -->
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>AOS.init();</script>

</body>
</html>
