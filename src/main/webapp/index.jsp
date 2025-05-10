<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="novalifefavi.png" type="image/png">
    <title>Hospital Management</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        /* Make the page fill the screen and allow proper spacing */
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }

        /* Use flexbox to keep footer at bottom */
        .wrapper {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        .content {
            flex: 1;
        }

        /* Optional: Ensure carousel takes good space */
        .carousel-container {
            height: 80vh; /* Adjust for hero effect */
            overflow: hidden;
        }

        /* Ensure footer stays at bottom */
        footer {
            background-color: #f1f1f1;
            padding: 10px 0;
            text-align: center;
        }
    </style>
    
</head>
<body>

<div class="wrapper">
    <!-- Navbar -->
    <jsp:include page="component/navbar.jsp" />
     <br>
    <br>

    <!-- Hero Carousel Section -->
    <div class="carousel-container">
        <jsp:include page="component/carousal.jsp" />
    </div>
     
    <hr>
    
 <!-- about us -->
    <div class="">
        <jsp:include page="component/aboutus.jsp" />
    </div>
    <br>
    <hr>
    <br>
    
    <!-- Our Team Of Doctors -->
    <div class="">
        <jsp:include page="component/ourteam.jsp" />
    </div>
    
    <br>
    <hr>
    <br>
    
    <!-- Expandable Questions -->
    <div class="content">
        <jsp:include page="component/expandableq.jsp" />
    </div>
    
      <br>
    <hr>
    <br>
    
    <!-- Footer -->
    <footer>
        <jsp:include page="component/footer.jsp" />
    </footer>
</div>
</body>
</html>
