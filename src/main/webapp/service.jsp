<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Our Drone Services</title>

  <!-- Tailwind CSS -->
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">

  <!-- AOS Animation -->
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

  <style>
    body {
      background: #0f172a;
      color: white;
      font-family: 'Segoe UI', sans-serif;
      overflow-x: hidden;
    }

    .section-title {
      font-size: 2.5rem;
      font-weight: bold;
      margin-bottom: 1rem;
    }

    /* Drone Animation */
    .drone {
      position: absolute;
      width: 50px;
      top: 20%;
      animation: flyDrone 20s linear infinite;
      z-index: 10;
    }

    .drone2 {
      top: 60%;
      animation-duration: 25s;
      animation-delay: 5s;
    }

    @keyframes flyDrone {
      0% {
        left: -60px;
        transform: rotate(10deg);
      }
      50% {
        transform: rotate(-10deg);
      }
      100% {
        left: 110%;
        transform: rotate(10deg);
      }
    }
  </style>
</head>
<body>

<!-- Animated Drones -->
<img src="https://cdn-icons-png.flaticon.com/512/2933/2933923.png" alt="Drone 1" class="drone" />
<img src="https://cdn-icons-png.flaticon.com/512/2933/2933923.png" alt="Drone 2" class="drone drone2" />

<!-- Services Section -->
<section class="text-center py-16 px-4" id="services">
  <h2 class="section-title text-cyan-400" data-aos="fade-down" data-aos-duration="1000">Our Drone Services</h2>
  <p class="text-gray-300 max-w-xl mx-auto mb-12" data-aos="fade-up" data-aos-delay="200">
    From the sky to your screen – we deliver aerial perfection with creativity, precision, and motion.
  </p>

  <div class="grid grid-cols-1 md:grid-cols-3 gap-10 max-w-6xl mx-auto">
    <!-- Service 1 -->
    <div class="bg-gray-800 rounded-2xl p-6 hover:shadow-xl transition" data-aos="zoom-in" data-aos-delay="300">
      <img src="https://cdn-icons-png.flaticon.com/512/3505/3505186.png" alt="Aerial Photography" class="w-20 mx-auto mb-4 animate-bounce">
      <h3 class="text-xl font-semibold mb-2 text-cyan-300">Aerial Photography</h3>
      <p class="text-gray-400">Stunning high-resolution images captured from above for real estate, tourism, and events.</p>
    </div>

    <!-- Service 2 -->
    <div class="bg-gray-800 rounded-2xl p-6 hover:shadow-xl transition" data-aos="zoom-in" data-aos-delay="500">
      <img src="https://cdn-icons-png.flaticon.com/512/1146/1146869.png" alt="Drone Videography" class="w-20 mx-auto mb-4 animate-pulse">
      <h3 class="text-xl font-semibold mb-2 text-cyan-300">Cinematic Videography</h3>
      <p class="text-gray-400">Smooth cinematic drone footage for commercials, events, documentaries, and more.</p>
    </div>

    <!-- Service 3 -->
    <div class="bg-gray-800 rounded-2xl p-6 hover:shadow-xl transition" data-aos="zoom-in" data-aos-delay="700">
      <img src="https://cdn-icons-png.flaticon.com/512/3536/3536424.png" alt="Inspection" class="w-20 mx-auto mb-4 animate-spin">
      <h3 class="text-xl font-semibold mb-2 text-cyan-300">Surveillance & Inspection</h3>
      <p class="text-gray-400">Monitor infrastructure, farms, or construction safely and efficiently using our drone tech.</p>
    </div>
  </div>
</section>

<!-- AOS JS -->
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
  AOS.init();
</script>

</body>
</html>

