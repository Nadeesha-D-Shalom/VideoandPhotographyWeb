<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Contact Us - VideoHub</title>
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
  <style>
    body {
      margin: 0;
      font-family: 'Segoe UI', sans-serif;
      background: url('assets/img/hero/h1_hero1.png') no-repeat center center fixed;

      color: #111827;
    }

    .drone {
      position: absolute;
      width: 60px;
      top: 12%;
      animation: flyDrone 25s linear infinite;
      z-index: 10;
    }

    @keyframes flyDrone {
      0% { left: -80px; transform: rotate(15deg); }
      50% { transform: rotate(-15deg); }
      100% { left: 110%; transform: rotate(15deg); }
    }

    .container {
      max-width: 1100px;
      margin: 100px auto;
      background: rgba(255, 255, 255, 0.73);
      border-radius: 12px;
      box-shadow: 0 10px 25px rgba(0,0,0,0.1);
      display: flex;
      overflow: hidden;
    }

    .contact-left {
      flex: 1;
      background: #000;
    }

    .contact-left img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .contact-right {
      flex: 1;
      padding: 40px 35px;
      background: rgba(249, 250, 251, 0.74);
    }

    .contact-right h2 {
      font-size: 32px;
      margin-bottom: 15px;
      color: #1f2937;
    }

    .contact-right p.description {
      font-size: 15px;
      color: #4b5563;
    }

    .contact-right hr {
      width: 60px;
      height: 3px;
      background-color: #f59e0b;
      border: none;
      margin: 20px 0;
    }

    .contact-right p {
      margin: 10px 0;
      font-size: 15px;
    }

    .contact-right a {
      color: #2563eb;
      text-decoration: none;
    }

    .contact-right a:hover {
      text-decoration: underline;
    }

    .map-embed {
      margin-top: 25px;
      border-radius: 8px;
      overflow: hidden;
      box-shadow: 0 0 10px rgba(0,0,0,0.07);
    }

    @media screen and (max-width: 768px) {
      .container {
        flex-direction: column;
      }
      .contact-left, .contact-right {
        width: 100%;
      }
    }
  </style>
</head>
<body>

<img src="https://cdn-icons-png.flaticon.com/512/2933/2933923.png" class="drone" alt="Flying Drone" />

<div class="container" data-aos="fade-up" data-aos-delay="100">
  <div class="contact-left">
    <img src="assets/img/gallery/visit_bg.png" alt="Drone Photo">
  </div>

  <div class="contact-right">
    <h2>Contact Us</h2>
    <p class="description">We’re here to capture your best moments from above!</p>
    <hr>
    <p><strong>📞 Phone:</strong> +(94) 112 448 55 55</p>
    <p><strong>📍 Location:</strong> 75 Street Malabe, 63025</p>
    <p><strong>📧 Email:</strong> <a href="mailto:video.hub1@gmail.com">video.hub1@gmail.com</a></p>
    <p><strong>🌐 Template credit:</strong> <a href="#" target="_blank">My Web Portfolio</a></p>

    <div class="map-embed">
      <iframe
              src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d126733.55132699891!2d79.91871910907884!3d6.927078866914227!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2597fae99ebf3%3A0x1cd7c1b78dc89fa!2sMalabe%2C%20Sri%20Lanka!5e0!3m2!1sen!2slk!4v1700000000000"
              width="100%" height="250" style="border:0;" allowfullscreen="" loading="lazy">
      </iframe>
    </div>
  </div>
</div>

<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>AOS.init();</script>

</body>
</html>
