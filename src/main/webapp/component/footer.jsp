<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NovaLife Hospital Footer</title>
    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        :root {
            /* Midnight Green Color Palette */
            --midnight-green: #004346;
            --dark-green: #008080;
            --light-green: #1ab2b2;
            --accent-color: white;
            --text-color: #f4f4f4;
        }

        .hospital-footer {
            background-color: var(--midnight-green);
            color: var(--text-color);
            padding: 40px 20px;
            font-family: 'Arial', sans-serif;
        }

        .footer-container {
            display: flex;
            justify-content: space-between;
            max-width: 1200px;
            margin: 0 auto;
            flex-wrap: wrap;
        }

        .footer-column {
            flex: 1;
            margin: 10px 15px;
            min-width: 200px;
        }

        .footer-column h4 {
            color: var(--accent-color);
            border-bottom: 2px solid var(--light-green);
            padding-bottom: 10px;
            margin-bottom: 15px;
        }

        .footer-column ul {
            list-style-type: none;
            padding: 0;
        }

        .footer-column ul li a,
        .footer-column a {
            color: var(--text-color);
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .footer-column ul li a:hover,
        .footer-column a:hover {
            color: var(--light-green);
        }

        .social-icons {
            display: flex;
            gap: 15px;
            margin-top: 15px;
        }

        .social-icons a {
            color: var(--accent-color);
            font-size: 24px;
            transition: color 0.3s ease;
        }

        .social-icons a:hover {
            color: var(--light-green);
        }

        .footer-bottom {
            text-align: center;
            border-top: 1px solid var(--dark-green);
            padding-top: 20px;
            margin-top: 20px;
        }

        .legal-links {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 10px;
        }

        /* Mobile Responsiveness */
      /* Mobile Responsiveness */
@media screen and (max-width: 768px) {
    .footer-container {
        flex-direction: column;
        align-items: center;
    }

    .footer-column {
        width: 100%;
        text-align: center;
        margin: 10px 0;
    }
     /* Hide Quick Links column on mobile */
    .footer-column:nth-child(2) {
        display: none;
    }

    /* Hide non-essential content on mobile view */
    .footer-column h4 {
        font-size: 18px;
    }

    .footer-column ul {
        display: none; /* Hide quick links list on mobile */
    }

    .footer-column p {
        font-size: 14px; /* Smaller text for mobile */
        margin-bottom: 5px;
    }

    .social-icons {
        justify-content: center;
        margin-top: 10px;
    }

    .social-icons a {
        font-size: 20px; /* Resize icons */
    }

    /* Footer bottom: Keep essential legal links only */
    .legal-links {
        display: none; /* Optionally hide legal links */
    }
}
      
    </style>
</head>
<body>
    <!-- Footer Start -->
    <footer class="hospital-footer">
        <div class="footer-container">
            <div class="footer-column">
                <h4>NovaLife Hospital</h4>
                <p>🏥 Healthcare Excellence</p>
                <p>📍 123 Havelock City, Colombo 005</p>
                <p>📞 Emergency: 
                    <% 
                    // You can dynamically fetch emergency number from a config or database
                    String emergencyNumber = "011 2224 444";
                    out.println(emergencyNumber);
                    %>
                </p>
                <p>📧 info@novalifehospital.org</p>
            </div>

            <div class="footer-column">
                <h4>Quick Links</h4>
                <ul>
                    <%
                    // Dynamic link generation example
                    String[][] quickLinks = {
                        {"/services", "Medical Services"},
                        {"/doctors", "Our Physicians"},
                        {"/appointments", "Book Appointment"},
                        {"/patient-resources", "Patient Resources"}
                    };

                    for (String[] link : quickLinks) {
                        out.println("<li><a href='" + link[0] + "'>" + link[1] + "</a></li>");
                    }
                    %>
                </ul>
            </div>

            <div class="footer-column">
                <h4>Working Hours</h4>
                <p>Emergency: 24/7</p>
                <p>OPD: 8:00 AM - 8:00 PM</p>
                <p>Pharmacy: 7:00 AM - 9:00 PM</p>
            </div>

            <div class="footer-column">
                <h4>Follow Us</h4>
                <div class="social-icons">
                    <%
                    // Social media links with dynamic generation
                    String[][] socialLinks = {
                        {"#", "facebook", "fab fa-facebook"},
                        {"#", "twitter", "fab fa-twitter"},
                        {"#", "linkedin", "fab fa-linkedin"},
                        {"#", "instagram", "fab fa-instagram"}
                    };

                    for (String[] social : socialLinks) {
                        out.println("<a href='" + social[0] + "' aria-label='" + social[1] + "'>" +
                                    "<i class='" + social[2] + "'></i></a>");
                    }
                    %>
                </div>
            </div>
        </div>

        <div class="footer-bottom">
            <p>&copy; <%= java.time.Year.now() %> NovaLife Hospital. All Rights Reserved.</p>
            <div class="legal-links">
                <a href="/privacy-policy">Privacy Policy</a>
                <a href="/terms-of-service">Terms of Service</a>
            </div>
        </div>
    </footer>
    <!-- Footer End -->
</body>
</html>