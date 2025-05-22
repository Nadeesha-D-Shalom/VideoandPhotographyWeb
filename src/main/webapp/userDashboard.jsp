<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<%
  String username = (String) session.getAttribute("username");
  if (username == null) {
    response.sendRedirect("login.jsp");
    return;
  }
%>

<!doctype html>
<html class="no-js" lang="zxx">
<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Drone Photography</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

  <!-- CSS here -->
  <link rel="stylesheet" href="assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
  <link rel="stylesheet" href="assets/css/slicknav.css">
  <link rel="stylesheet" href="assets/css/flaticon.css">
  <link rel="stylesheet" href="assets/css/progressbar_barfiller.css">
  <link rel="stylesheet" href="assets/css/gijgo.css">
  <link rel="stylesheet" href="assets/css/animate.min.css">
  <link rel="stylesheet" href="assets/css/animated-headline.css">
  <link rel="stylesheet" href="assets/css/magnific-popup.css">
  <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
  <link rel="stylesheet" href="assets/css/themify-icons.css">
  <link rel="stylesheet" href="assets/css/slick.css">
  <link rel="stylesheet" href="assets/css/nice-select.css">
  <link rel="stylesheet" href="assets/css/style.css">
</head>

<body>
<!-- ? Preloader Start -->
<div id="preloader-active">
  <div class="preloader d-flex align-items-center justify-content-center">
    <div class="preloader-inner position-relative">
      <div class="preloader-circle"></div>
      <div class="preloader-img pere-text">
        <img src="assets/img/logo/loder.png" alt="">
      </div>
    </div>
  </div>
</div>
<!-- Preloader Start -->
<header>
  <!-- Header Start -->
  <div class="header-area header-transparent">
    <div class="main-header ">
      <div class="header-bottom  header-sticky">
        <div class="container-fluid">
          <div class="row align-items-center">
            <!-- Logo -->
            <div class="col-xl-2 col-lg-2">
              <div class="logo">
                <a href="userDashboard.jsp"><img src="assets/img/logo/logo.png" alt=""></a>
              </div>
            </div>
            <div class="col-xl-10 col-lg-10">
              <div class="menu-wrapper  d-flex align-items-center justify-content-end">
                <!-- Main-menu -->
                <div class="main-menu d-none d-lg-block">
                  <nav>
                    <ul id="navigation">
                      <li><a href="myAccount.jsp">My Account</a></li>
                      <li><a href="userDashboard.jsp">Home</a></li>
                      <li><a href="viewPackages.jsp">View Packages</a></li>
                      <li><a href="addBooking.jsp">Services</a></li>
                        <ul class="submenu">
                        </ul>
                      </li>
                      <li><a href="contact.jsp">Contact</a></li>
                      <!-- Header btn -->
                      <li>
                        <div class="header-right-btn ml-40">
                          <a href="login.jsp" class="btn"><img src="assets/img/icon/smartphone.svg" alt="">Logout</a>
                        </div>
                      </li>
                    </ul>
                  </nav>
                </div>
              </div>
            </div>
            <!-- Mobile Menu -->
            <div class="col-12">
              <div class="mobile_menu d-block d-lg-none"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Header End -->
</header>
<main>
  <!--? slider Area Start-->
  <section class="slider-area ">
    <div class="slider-active">
      <!-- Single Slider -->
      <div class="single-slider slider-bg1 hero-overly slider-height d-flex align-items-center">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-xl-8 col-lg-9 col-md-12">
              <div class="hero__caption text-center">
                <h1 data-animation="bounceIn" data-delay="0.2s">Drone Photography<br> & Videography</h1>
                <h4 style="color: white;" data-animation="fadeInUp" data-delay="0.3s">Welcome, <%= username %> 👋</h4>
                <p data-animation="fadeInUp" data-delay="0.4s">Duis aute irure dolor inasfa reprehenderit in voluptate
                  velit esse cillum reeut cupidatatfug.</p>
                <a href="service.jsp" class="hero-btn" data-animation="fadeInUp" data-delay="0.7s">Explore services</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Single Slider -->
      <div class="single-slider slider-bg1 hero-overly slider-height d-flex align-items-center">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-xl-8 col-lg-9 col-md-12">
              <div class="hero__caption text-center">
                <h1 data-animation="bounceIn" data-delay="0.2s">Drone Photography<br> & Videography</h1>
                <p data-animation="fadeInUp" data-delay="0.4s">Duis aute irure dolor inasfa reprehenderit in voluptate
                  velit esse cillum reeut cupidatatfug.</p>
                <a href="viewMediaPros" class="hero-btn" data-animation="fadeInUp" data-delay="0.7s">Start Project</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- slider Area End-->
  <!--? About 1 Start-->
  <section class="about-low-area section-padding30">
    <div class="container">
      <div class="row justify-content-between">
        <div class="col-xl-6 col-lg-6 col-md-10">
          <div class="about-caption mb-50">
            <!-- Section Tittle -->
            <div class="section-tittle mb-35">
              <h2>Hassle-Free Drone<br> Photography</h2>
            </div>
            <p class="about-cap-top">Inasfa reprehenderit in voluptate velit esse
              cillum reeut cupidatatfug nulla pariatur.</p>
            <p>Aute irure dolor inasfa reprehenderit in voluptate velit esse
              cillum reeut cupidatatfug nulla pariatur. Excepteur sintxsdfas
              occaecat.</p>
            <a href="viewMediaPros" class="btn black-btn">Start Project</a>
          </div>
        </div>
        <div class="offset-xl-0 col-xl-6 offset-lg-0 col-lg-6 col-md-9 offset-md-1 offset-sm-1">
          <div class="about-right-cap">
            <div class="about-right-img">
              <img src="assets/img/gallery/about1.png" alt="">
            </div>
            <div class="img-cap">
              <span>20</span>
              <p>Years of experience</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- About  End-->
  <!--? services area start -->
  <section class="services-section pb-padding fix">
    <div class="container">
      <div class="custom-row">
        <div class="services-active">
          <div class="col-lg-4">
            <div class="single-cat">
              <div class="cat-icon">
                <img src="assets/img/gallery/services1.png" alt="">
              </div>
              <div class="cat-cap">
                <h5><a href="addBooking.jsp">Residential Real Estate Photography</a></h5>
                <p>Aute irure dolor inasfa reprehenderit in voluptate velit esse cillum reeut cupidatatfug nulla pariatur.</p>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="single-cat">
              <div class="cat-icon">
                <img src="assets/img/gallery/services2.png" alt="">
              </div>
              <div class="cat-cap">
                <h5><a href="addBooking.jsp">Commercial Real Estate Photography</a></h5>
                <p>Aute irure dolor inasfa reprehenderit in voluptate velit esse cillum reeut cupidatatfug nulla pariatur.</p>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="single-cat">
              <div class="cat-icon">
                <img src="assets/img/gallery/services3.png" alt="">
              </div>
              <div class="cat-cap">
                <h5><a href="addBooking.jsp">Construction Site Monitoring</a></h5>
                <p>Aute irure dolor inasfa reprehenderit in voluptate velit esse cillum reeut cupidatatfug nulla pariatur.</p>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="single-cat">
              <div class="cat-icon">
                <img src="assets/img/gallery/services2.png" alt="">
              </div>
              <div class="cat-cap">
                <h5><a href="addBooking.jsp">Commercial Real Estate Photography</a></h5>
                <p>Aute irure dolor inasfa reprehenderit in voluptate velit esse cillum reeut cupidatatfug nulla pariatur.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- Services End -->

  <!--? Visit Our Tailor Start -->
  <div class="visit-tailor-area fix">
    <!--Right Contents  -->
    <div class="tailor-offers"></div>
    <!-- left Contents -->
    <div class="tailor-details">
      <h2>Recent projects</h2>
      <p>Inasfa reprehenderit in voluptate velit esse
        cillum reeut cupidatatfug nulla pariatur.</p>
      <p class="pera-bottom">Aute irure dolor inasfa reprehenderit in voluptate velit esse cillum reeut cupidatatfug nulla pariatur. Excepteur sintxsdfas occaecat.</p>
    </div>
  </div>
  <!-- Visit Our Tailor End -->
  <!--? services area start -->
  <section class="services-section services-section2 pb-padding  fix">
    <div class="container">
      <div class="custom-row">
        <div class="services-active">
          <div class="col-lg-4">
            <div class="single-cat">
              <div class="cat-icon">
                <img src="assets/img/gallery/services4.png" alt="">
              </div>
              <div class="cat-cap">
                <h5><a href="addBooking.jsp">Drone Inspection team from Terra Drone</a></h5>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="single-cat">
              <div class="cat-icon">
                <img src="assets/img/gallery/services5.png" alt="">
              </div>
              <div class="cat-cap">
                <h5><a href="addBooking.jsp">Commercial Real Estate Photography</a></h5>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="single-cat">
              <div class="cat-icon">
                <img src="assets/img/gallery/services6.png" alt="">
              </div>
              <div class="cat-cap">
                <h5><a href="addBooking.jsp">Construction Site Monitoring</a></h5>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="single-cat">
              <div class="cat-icon">
                <img src="assets/img/gallery/services5.png" alt="">
              </div>
              <div class="cat-cap">
                <h5><a href="addBooking.jsp">Commercial Real Estate Photography</a></h5>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- Services End -->
  <!--? Testimonial Area Start -->
  <section class="testimonial-area testimonial-padding fix section-bg" data-background="assets/img/gallery/section_bg03.png">
    <div class="container">
      <div class="row align-items-center justify-content-center">
        <div class=" col-lg-9">
          <div class="about-caption">
            <!-- Testimonial Start -->
            <div class="h1-testimonial-active dot-style">
              <!-- Single Testimonial -->
              <div class="single-testimonial position-relative">
                <div class="testimonial-caption">
                  <img src="assets/img/icon/quotes-sign.png" alt="" class="quotes-sign">
                  <p>"The automated process starts as soon as your clothe go into the machine. This site outcome is gleaming clothe. Placeholder text commonly used. In publishing and graphic.</p>
                </div>
                <!-- founder -->
                <div class="testimonial-founder d-flex align-items-center">
                  <div class="founder-img">
                    <img src="assets/img/icon/testimonial.png" alt="">
                  </div>
                  <div class="founder-text">
                    <span>Robart Brown</span>
                    <p>Creative designer at Colorlib</p>
                  </div>
                </div>
              </div>
              <!-- Single Testimonial -->
              <div class="single-testimonial position-relative">
                <div class="testimonial-caption">
                  <img src="assets/img/icon/quotes-sign.png" alt="" class="quotes-sign">
                  <p>"The automated process starts as soon as your clothe go into the machine. This site outcome is gleaming clothe. Placeholder text commonly used. In publishing and graphic.</p>
                </div>
                <!-- founder -->
                <div class="testimonial-founder d-flex align-items-center">
                  <div class="founder-img">
                    <img src="assets/img/icon/testimonial.png" alt="">
                  </div>
                  <div class="founder-text">
                    <span>Robart Brown</span>
                    <p>Creative designer at Colorlib</p>
                  </div>
                </div>
              </div>
            </div>
            <!-- Testimonial End -->
          </div>
        </div>
      </div>
    </div>
  </section>
</main>
<footer>
  <div class="footer-wrapper section-bg2"  data-background="assets/img/gallery/footer-bg.png">
    <!-- Footer Start-->
    <div class="footer-area footer-padding">
      <div class="container">
        <div class="row justify-content-between">
          <div class="col-xl-4 col-lg-4 col-md-5 col-sm-7">
            <div class="single-footer-caption mb-50">
              <div class="single-footer-caption mb-30">
                <!-- logo -->
                <div class="footer-logo mb-35">
                  <a href="userDashboard.jsp"><img src="assets/img/logo/logo2_footer.png" alt=""></a>
                </div>
                <div class="footer-tittle">
                  <div class="footer-pera">
                    <p>Duis aute irure dolor inasfa reprehenderit in voluptate velit esse cillum reeut cupidatatfug.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="offset-xl-1 col-xl-2 col-lg-2 col-md-4 col-sm-6">
            <div class="single-footer-caption mb-50">
              <div class="footer-tittle">
                <h4>Navigation</h4>
                <ul>
                  <li><a href="userDashboard.jsp">Home</a></li>
                  <li><a href="aboutus.jsp">About</a></li>
                  <li><a href="addBooking.jsp">Services</a></li>
                  <li><a href="contact.jsp">Contact</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- footer-bottom area -->
    <div class="footer-bottom-area">
      <div class="container">
        <div class="footer-border">
          <div class="row">
            <div class="col-xl-12 ">
              <div class="footer-copy-right text-center">
                <p> Copyright ©2025 All rights reserved | Edited by PGNO 30 </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Footer End-->
  </div>
</footer>
<!-- Scroll Up -->
<div id="back-top" >
  <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
</div>

<!-- JS here -->

<script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
<script src="./assets/js/popper.min.js"></script>
<script src="./assets/js/bootstrap.min.js"></script>
<!-- Jquery Mobile Menu -->
<script src="./assets/js/jquery.slicknav.min.js"></script>

<!-- Jquery Slick , Owl-Carousel Plugins -->
<script src="./assets/js/owl.carousel.min.js"></script>
<script src="./assets/js/slick.min.js"></script>
<!-- One Page, Animated-HeadLin -->
<script src="./assets/js/wow.min.js"></script>
<script src="./assets/js/animated.headline.js"></script>
<script src="./assets/js/jquery.magnific-popup.js"></script>

<!-- Date Picker -->
<script src="./assets/js/gijgo.min.js"></script>
<!-- Nice-select, sticky -->
<script src="./assets/js/jquery.nice-select.min.js"></script>
<script src="./assets/js/jquery.sticky.js"></script>
<!-- Progress -->
<script src="./assets/js/jquery.barfiller.js"></script>

<!-- counter , waypoint,Hover Direction -->
<script src="./assets/js/jquery.counterup.min.js"></script>
<script src="./assets/js/waypoints.min.js"></script>
<script src="./assets/js/jquery.countdown.min.js"></script>
<script src="./assets/js/hover-direction-snake.min.js"></script>

<!-- contact js -->
<script src="./assets/js/contact.js"></script>
<script src="./assets/js/jquery.form.js"></script>
<script src="./assets/js/jquery.validate.min.js"></script>
<script src="./assets/js/mail-script.js"></script>
<script src="./assets/js/jquery.ajaxchimp.min.js"></script>

<!-- Jquery Plugins, main Jquery -->
<script src="./assets/js/plugins.js"></script>
<script src="./assets/js/main.js"></script>

</body>
</html>