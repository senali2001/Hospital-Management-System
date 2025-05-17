<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>
    :root {
        --midnight-green: #004d40;

    }

    /* Card styling */
    .point-card {
        box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
        border-radius: 10px;
        background-color: #ffffff;
    }

    /* Login button */
    .btn.bg-success {
        background-color: #004953 !important;  /* Midnight Green */
        color: #ffffff !important;              /* White text */

        font-weight: 500;
        border: none;
        transition: background-color 0.3s ease;
    }

    .btn.bg-success:hover {
        background-color: #00695c !important;
    }

    /* Create account link */
    .clink {
        color: #007bff;
        text-decoration: none;
    }

    .clink:hover {
        text-decoration: underline;
    }


    /* admin*/

    .paint-card {
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        border-radius: 10px;
        transition: transform 0.3s ease-in-out;
    }

    .paint-card:hover {
        transform: scale(1.02);
    }

    .admin-navbar {
        background-color: #004953;  /* This is a shade of midnight green */
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

    /* Admin Navbar styles */
    .navbar {
        background-color: #004d40;
        color: white;
        position: fixed;
        top: 15px;
        left: 20px;
        right: 20px;
        z-index: 1000;
        border-radius: 12px;
        padding: 10px 20px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        flex-wrap: wrap;
        box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    .navbar-header {
        display: flex;
        align-items: center;
        justify-content: space-between;
        width: 100%;
    }

    .logo {
        color: white;
        font-size: 22px;
        font-weight: 700;
        text-decoration: none;
        display: flex;
        align-items: center;
        gap: 8px;
    }

    .logo i {
        font-size: 26px;
    }

    .menu-icon {
        font-size: 28px;
        color: white;
        cursor: pointer;
        display: none;
    }

    .nav-links {
        display: flex;
        justify-content: flex-end;
        align-items: center;
        gap: 20px;
        flex-grow: 1;
    }

    .nav-links a, .nav-links .btn {
        color: white;
        padding: 8px 14px;
        text-decoration: none;
        font-size: 16px;
        border-radius: 8px;
        background: transparent;
        border: none;
    }

    .nav-links a:hover, .nav-links .btn:hover {
        background-color: #26a69a;
        color: white;
    }

    .dropdown {
        position: relative;
    }

    .dropdown-menu {
        position: absolute;
        right: 0;
        background-color: white;
        color: black;
        border-radius: 8px;
        box-shadow: 0 4px 10px rgba(0,0,0,0.15);
        margin-top: 8px;
        display: none;
        min-width: 140px;
        z-index: 1100;
    }

    .dropdown:hover .dropdown-menu {
        display: block;
    }

    .dropdown-menu li a {
        color: black;
        padding: 10px 16px;
        display: block;
        text-decoration: none;
    }

    .dropdown-menu li a:hover {
        background-color: #eee;
    }

    @media screen and (max-width: 768px) {
        .menu-icon {
            display: block;
        }
        .nav-links {
            display: none;
            flex-direction: column;
            width: 100%;
            margin-top: 12px;
            background-color: #004d40;
            border-radius: 12px;
            padding: 10px 0;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }
        .nav-links.show {
            display: flex;
        }
        .nav-links a, .nav-links .btn {
            text-align: center;
            padding: 12px 16px;
            width: 100%;
            border-radius: 0;
        }
        .dropdown:hover .dropdown-menu {
            display: none;
        }
        .dropdown .dropdown-menu {
            position: relative;
            box-shadow: none;
            background-color: transparent;
            margin-top: 0;
        }
    }
    /* admin navbar newly added dropdown*/

    .admin-navbar {
        background-color: #004d40 !important; /* Midnight Green */
    }

    .admin-navbar .navbar-brand,
    .admin-navbar .nav-link,
    .admin-navbar .dropdown-menu a {
        color: #ffffff !important;
    }

    .admin-navbar .dropdown-menu {
        background-color: #00695c; /* slightly lighter for contrast */
    }

    .admin-navbar .dropdown-menu a:hover {
        background-color: #00796b; /* hover effect */
        color: #ffffff !important;
    }

    /* Navbar brand icon */
.navbar-brand-icon {
  display: inline-block;
  width: 35px;
  height: 35px;
  border-radius: 50%;
  background-color: white;
  color: #004d40; /* Midnight Green */
  font-weight: bold;
  font-size: 20px;
  line-height: 35px;
  text-align: center;
  border: 2px solid #004d40;
}

</style>

