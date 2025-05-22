<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>About Us | Drone Vision</title>

  <!-- Tailwind CSS -->
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">

  <!-- AOS Animation -->
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

  <style>
    body {
      background-color: #0f172a;
      color: white;
      font-family: 'Segoe UI', sans-serif;
      overflow-x: hidden;
    }

    .drone {
      position: absolute;
      width: 50px;
      top: 15%;
      animation: flyDrone 22s linear infinite;
      z-index: 10;
    }

    .drone2 {
      top: 70%;
      animation-delay: 3s;
      animation-duration: 27s;
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

    .section-title {
      font-size: 2.5rem;
      font-weight: bold;
      margin-bottom: 1rem;
    }
  </style>
</head>
<body>

<!-- Flying Drones -->
<img src="https://cdn-icons-png.flaticon.com/512/2933/2933923.png" class="drone" alt="Drone Animation">
<img src="https://cdn-icons-png.flaticon.com/512/2933/2933923.png" class="drone drone2" alt="Drone Animation">

<!-- About Us Section -->
<section class="text-center py-20 px-6">
  <h2 class="section-title text-teal-400" data-aos="fade-down" data-aos-duration="1000">About Us</h2>
  <p class="text-gray-300 max-w-2xl mx-auto mb-10" data-aos="fade-up" data-aos-delay="200">
    We are passionate aerial storytellers, bringing innovation and sky-high creativity through drones. Our mission is to capture the unseen and deliver magic from above.
  </p>

  <div class="flex flex-col md:flex-row gap-10 justify-center items-center">
    <!-- Mission -->
    <div class="bg-gray-800 p-8 rounded-2xl w-full md:w-1/2 shadow-lg" data-aos="flip-left" data-aos-delay="300">
      <h3 class="text-2xl font-semibold text-cyan-300 mb-3">🎯 Our Mission</h3>
      <p class="text-gray-400">To provide innovative drone solutions that elevate perspectives, empower creativity, and tell unforgettable stories from the sky.</p>
    </div>

    <!-- Vision -->
    <div class="bg-gray-800 p-8 rounded-2xl w-full md:w-1/2 shadow-lg" data-aos="flip-right" data-aos-delay="500">
      <h3 class="text-2xl font-semibold text-cyan-300 mb-3">🚀 Our Vision</h3>
      <p class="text-gray-400">To be the leading aerial media brand known for precision, innovation, and breathtaking cinematic excellence.</p>
    </div>
  </div>
</section>

<!-- Timeline Section -->
<section class="py-16 px-6">
  <h2 class="section-title text-center text-teal-400 mb-10" data-aos="fade-down">Our Journey</h2>
  <div class="max-w-4xl mx-auto">
    <div class="relative border-l border-gray-600 pl-6 space-y-10">
      <!-- Event 1 -->
      <div data-aos="fade-right" data-aos-delay="300">
        <h4 class="text-xl text-cyan-300 font-bold">2019 – Launched Our First Drone</h4>
        <p class="text-gray-400">A dream took flight with our first commercial drone gig. A new perspective was born.</p>
      </div>

      <!-- Event 2 -->
      <div data-aos="fade-left" data-aos-delay="500">
        <h4 class="text-xl text-cyan-300 font-bold">2021 – Expanded into Cinematic Projects</h4>
        <p class="text-gray-400">From real estate to weddings and corporate events – we flew higher with purpose and passion.</p>
      </div>

      <!-- Event 3 -->
      <div data-aos="fade-right" data-aos-delay="700">
        <h4 class="text-xl text-cyan-300 font-bold">2023 – National Recognition</h4>
        <p class="text-gray-400">Awarded for creativity and safety in aerial media at the National Drone Summit.</p>
      </div>
    </div>
  </div>
</section>

<!-- AOS Script -->
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
  AOS.init();
</script>

</body>
</html>
