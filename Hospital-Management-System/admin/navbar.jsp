<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navbar</title>

    <style>
        .navbar {
            background-color: #004953;
            position: fixed;
            top: 15px;
            left: 20px;
            right: 20px;
            z-index: 1000;
            border-radius: 10px;
            padding: 8px 16px; /* reduced padding */
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
            font-size: 20px; /* slightly smaller */
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
            padding: 10px 16px; /* reduced padding */
            text-decoration: none;
            font-size: 16px;
            border-radius: 8px;
        }

        .nav-links a:hover {
            background-color: #ddd;
            color: black;
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
                padding: 10px 12px; /* reduced for mobile */
                margin: 2px 0;
                width: auto;
            }
        }

        body {
            margin-top: 80px; /* Adjusted to match new navbar height */
        }
    </style>
</head>
<body>
    <div class="navbar">
        <div class="navbar-header">
            <a href="#" class="logo">NovaLife</a>
            <span class="menu-icon" id="menuIcon" onclick="toggleMenu()">&#9776;</span>
        </div>

        <div class="nav-links" id="navLinks">
            <a href="index.jsp">Home</a>
            <a href="services.jsp">Services</a>
            <a href="about.jsp">About</a>
            <a href="contact.jsp">Contact</a>
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
</body>
</html>

   