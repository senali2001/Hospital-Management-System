<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<link rel="stylesheet" href="../component/allcss.css">

<nav class="navbar navbar-expand-lg admin-navbar">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><span class="navbar-brand-icon">N</span>Nova Hospital</a>

    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="../index.jsp">HOME</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/user_appointment.jsp">NEW APPOINTMENT</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/view_appointment.jsp">VIEW MY APPOINTMENT</a>
        </li>

        <!-- Admin dropdown -->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="adminDropdown" role="button" data-bs-toggle="dropdown">
           <i class="fas fa-user-circle"></i>
            <c:choose>
      <c:when test="${not empty sessionScope.userFullName}">
        ${sessionScope.userFullName}
      </c:when>
      <c:otherwise>
        User
      </c:otherwise>
    </c:choose>
          </a>
          <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="adminDropdown">
            <li><a class="dropdown-item" href="#">Profile</a></li>
            <li><hr class="dropdown-divider"></li>
             <li><a class="dropdown-item" href="#">Change Password</a></li>
            <li><a class="dropdown-item" href="../index.jsp">Logout</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>

<!-- Bootstrap Bundle JS (for dropdown and collapse) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
