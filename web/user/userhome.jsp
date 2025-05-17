<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Nova Hospital</title>
  <%@include file="../component/allcss.jsp" %>

  <style>
    .paint-card {
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
      border-radius: 10px;
      transition: transform 0.3s ease-in-out;
    }

    .paint-card:hover {
      transform: scale(1.02);
    }

    
    .admin-navbar .navbar-brand,
    .admin-navbar .nav-link,
    .admin-navbar .dropdown-menu a {
      color: #fff !important;
    }

    .admin-navbar .btn-light {
      background-color: #ffffff;
      color: #198754;
      border: none;
    }
  </style>
</head>

<body>
    <div>
  <%@include file="usernavbar.jsp" %>
  <br>
  <br>
  <br>
  <br>
  <!-- Hero Carousel Section -->
    <div class="carousel-container">
        <jsp:include page="../component/carousal.jsp" />
    </div>
     
    <hr>
    
 <!-- about us -->
    <div class="">
        <jsp:include page="../component/aboutus.jsp" />
    </div>
    <br>
    <hr>
    <br>
    
    <!-- Our Team Of Doctors -->
    <div class="">
        <jsp:include page="../component/ourteam.jsp" />
    </div>
    
    <br>
    <hr>
    <br>
    
    <!-- Expandable Questions -->
    <div class="content">
        <jsp:include page="../component/expandableq.jsp" />
    </div>
    
      <br>
    <hr>
    <br>
    
    <!-- Footer -->
    <footer>
        <jsp:include page="../component/footer.jsp" />
    </footer>
  
    
    
    </div>

 
</body>
</html>