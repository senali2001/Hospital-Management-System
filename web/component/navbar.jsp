<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
    String userName = (String) session.getAttribute("userName");
%>

<!-- Font Awesome for user icon -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
<%@include file="allcss.jsp" %>
<style>
    .navbar {
        background-color: #004d40;
        color: white;

        position: fixed;
        top: 15px;
        left: 20px;
        right: 20px;
        z-index: 1000;
        border-radius: 10px;
        padding: 8px 16px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        flex-wrap: wrap;
    }

    .navbar-header {
        display: flex;
        align-items: center;
        justify-content: space-between;
        width: 100%;
    }

    .logo {
        color: white;
        font-size: 20px;
        font-weight: bold;
        text-decoration: none;
    }

    .menu-icon {
        font-size: 24px;
        color: white;
        cursor: pointer;
        display: none;
    }

    .nav-links {
        display: flex;
        justify-content: center;
        flex-grow: 1;
        gap: 16px;
    }

    .nav-links a {
        color: white;
        padding: 10px 16px;
        text-decoration: none;
        font-size: 16px;
        border-radius: 8px;
    }

    .nav-links a:hover {
        background-color: #ddd;
        color: black;
    }

    .dropdown {
        position: relative;
        display: inline-block;
    }

    .dropdown-toggle {
        background: none;
        border: none;
        color: white;
        font-size: 16px;
        cursor: pointer;
    }

    .dropdown-menu {
        display: none;
        position: absolute;
        background-color: white;
        min-width: 140px;
        box-shadow: 0px 8px 16px rgba(0,0,0,0.2);
        border-radius: 8px;
        z-index: 1;
        right: 0;
    }

    .dropdown-menu li {
        list-style: none;
    }

    .dropdown-menu li a {
        color: black;
        padding: 10px 16px;
        text-decoration: none;
        display: block;
        border-radius: 8px;
    }

    .dropdown-menu li a:hover {
        background-color: #f1f1f1;
    }

    .dropdown:hover .dropdown-menu {
        display: block;
    }

    @media screen and (max-width: 768px) {
        .navbar {
            flex-direction: column;
            align-items: stretch;
            padding: 8px 16px;
        }

        .menu-icon {
            display: block;
            margin-left: auto;
        }

        .nav-links {
            display: none;
            flex-direction: column;
            width: 100%;
            margin-top: 8px;
        }

        .nav-links.show {
            display: flex;
        }

        .nav-links a {
            text-align: left;
            padding: 10px 12px;
            margin: 2px 0;
        }
    }
</style>

<div class="navbar">
    <div class="navbar-header">
        <a href="index.jsp" class="logo"><span class="navbar-brand-icon">N</span>NovaLife</a>
        <span class="menu-icon" id="menuIcon" onclick="toggleMenu()">&#9776;</span>
    </div>

    <div class="nav-links" id="navLinks">
        <a href="index.jsp">Home</a>



        <a href="admin_login.jsp">Admin</a>
        <a href="doctor_login.jsp">Doctor</a>
        <a href="#">View Appointment</a>
        <a href="user_login.jsp">Login</a>


    </div>
</div>

<script>
    function toggleMenu() {
        var nav = document.getElementById("navLinks");
        var icon = document.getElementById("menuIcon");
        nav.classList.toggle("show");
        icon.innerHTML = nav.classList.contains("show") ? "&#10005;" : "&#9776;";
    }
</script>
