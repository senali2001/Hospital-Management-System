<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Hero Section</title>

    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
          integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />

    <style>
        /* Basic Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

       
        /* Hero Section */
        #hero {
            background: #eaeaea;
            overflow: hidden;
            padding: 50px 0;
            margin-top: 20px; /* Space below the navbar */
        }

        #hero .container {
            position: relative;
            margin: auto;
            width: 90%;
            max-width: 100%; /* Full width on larger screens */
            height: 600px;
            background: #f5f5f5;
            box-shadow: 0 30px 50px #dbdbdb;
            overflow: hidden;
        }

        .slide .item {
            width: 200px;
            height: 300px;
            position: absolute;
            top: 50%;
            transform: translate(0, -50%);
            border-radius: 20px;
            box-shadow: 0 30px 50px #505050;
            background-position: 50% 50%;
            background-size: cover;
            display: inline-block;
            transition: 0.5s;
        }

        .slide .item:nth-child(1),
        .slide .item:nth-child(2) {
            top: 0;
            left: 0;
            transform: translate(0, 0);
            border-radius: 0;
            width: 100%;
            height: 100%;
        }

        .slide .item:nth-child(3) {
            left: 50%;
        }

        .slide .item:nth-child(4) {
            left: calc(50% + 220px);
        }

        .slide .item:nth-child(5) {
            left: calc(50% + 440px);
        }

        .slide .item:nth-child(n+6) {
            left: calc(50% + 660px);
            opacity: 0;
        }

        .item .content {
            position: absolute;
            top: 50%;
            left: 100px;
            width: 300px;
            text-align: left;
            color: #eee;
            transform: translate(0, -50%);
            font-family: system-ui;
            display: none;
        }

        .slide .item:nth-child(2) .content {
            display: block;
        }

        .content .name {
        background: rgba(1, 49, 59, 0.75); /* dark overlay */
  padding: 20px 25px;
  border-radius: 12px;
  max-width: 450px;
  color: white;
  box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            font-size: 40px;
            text-transform: uppercase;
            font-weight: bold;
            opacity: 0;
            animation: animate 1s ease-in-out 1 forwards;
        }

        .content .des {
        
            margin-top: 10px;
            margin-bottom: 20px;
            opacity: 0;
            animation: animate 1s ease-in-out 0.3s 1 forwards;
        }

        .content button {
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            opacity: 0;
            animation: animate 1s ease-in-out 0.6s 1 forwards;
            background-color: #01313b;
    color: white;
    border-radius: 8px;
    font-weight: bold;
    transition: 0.3s;
        }
        
        .content button:hover {
    background-color: #005f73;
    color: #fff;
}

        @keyframes animate {
            from {
                opacity: 0;
                transform: translate(0, 100px);
                filter: blur(33px);
            }
            to {
                opacity: 1;
                transform: translate(0);
                filter: blur(0);
            }
        }

        .button {
            width: 100%;
            text-align: center;
            position: absolute;
            bottom: 20px;
        }

        .button button {
            width: 40px;
            height: 35px;
            border-radius: 8px;
            border: none;
            cursor: pointer;
            margin: 0 5px;
            border: 1px solid #000;
            transition: 0.3s;
             background-color: white; /* base */
    color: #01313b; /* arrow color */
    border: 1px solid #01313b;
        }

        .button button:hover {
            background-color: #333;
            color: #fff;
                background-color: #01313b;
    color: white;
            
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            #hero .container {
                height: 500px;
                width: 95%;
            }

            .item .content {
                left: 20px;
                width: 90%;
            }

            .content .name {
                font-size: 28px;
            }

            .content .des {
                font-size: 14px;
            }
        }

        @media (max-width: 480px) {
            .slide .item:nth-child(3),
            .slide .item:nth-child(4),
            .slide .item:nth-child(5),
            .slide .item:nth-child(n+6) {
                display: none;
            }

            .button {
                bottom: 10px;
            }
        }
    </style>
</head>
<body>




<!-- Hero Section -->
<section id="hero">
    <div class="container">
        <div class="slide">
            <div class="item" style="background-image: url(https://cdn.expresshealthcare.in/wp-content/uploads/2020/01/22122412/Doctors-consultation-e1724041879564.jpg);">
                <div class="content">
                    <div class="name">Welcome to NovaLife Hospital</div>
                    <div class="des"><font color="black">Providing compassionate care with modern 
                    technology and expert medical staff.</font></div>
                    <button>See More</button>
                </div>
            </div>
            <div class="item" style="background-image: url(https://www.trimbodymd.com/wp-content/uploads/2025/02/where-and-how-to-inject-tirzepatide-weight-loss-guide.jpg);">
                <div class="content">
                    <div class="name">Happy, Expert Care for You.</div>
                    <div class="des"><font color="black">Experience the best treatment in a warm, welcoming environment with our expert consultants. Your health journey made happy and easy</font></div>
                    <button>See More</button>
                </div>
            </div>
            <div class="item" style="background-image: url(https://media.licdn.com/dms/image/v2/D4E22AQFWW6ViGiG_Zg/feedshare-shrink_800/feedshare-shrink_800/0/1733932678394?e=2147483647&v=beta&t=Z9w6Itnb2vb8PxqQ7FGhd9Rhu0nS03jRQYfvYEYYUXM);">
                <div class="content">
                    <div class="name">24/7 Care & Emergency Services</div>
                    <div class="des"><font color="black">Round-the-clock medical support with rapid emergency response. We're always here when you need us most!</font></div>
                    <button>See More</button>
                </div>
            </div>
            <div class="item" style="background-image: url(https://www.theglobeandmail.com/resizer/v2/SBGYUN56KBFFHKDFD3B6JDKMZI?auth=20ad06685f972de8b2d3ab9c13272a18a8150769b5d369dda085430531a60057&width=1200&quality=80);">
                <div class="content">
                    <div class="name">Advanced Laboratory Testing</div>
                    <div class="des"><font color="black">Equipped with the latest technology, our lab delivers fast, accurate results—ensuring high-quality diagnostics you can trust.</font></div>
                    <button>See More</button>
                </div>
            </div>
            <div class="item" style="background-image: url(https://www.themandarin.com.au/wp-content/uploads/sites/5/2024/06/hospital-numbers.jpeg?fit=1024%2C683);">
                <div class="content">
                    <div class="name">Modern Operation Theater</div>
                    <div class="des">Our fully equipped operation theater is designed for safety and precision, offering expert surgical care with advanced technology.</div>
                    <button>See More</button>
                </div>
            </div>
            <div class="item" style="background-image: url(https://www.t-systems.com/resource/image/1002312/ratio3x2/1440/960/8cc56842634d15fe6f6e70a8374174ea/1EF1A65AFA9AE1CA7C436BCAD77B0C55/im-cloud-based-patient-record-management.jpg);">
                <div class="content">
                    <div class="name">Advanced Technology for Your Convenience</div>
                    <div class="des"><font color="black">With our modern tech, booking appointments, viewing doctor details, and managing your health records has never been easier. Everything at your fingertips!</font></div>
                    <button>See More</button>
                </div>
            </div>
        </div>

        <div class="button">
            <button class="prev"><i class="fa-solid fa-arrow-left"></i></button>
            <button class="next"><i class="fa-solid fa-arrow-right"></i></button>
        </div>
    </div>
</section>

<script>
    let next = document.querySelector('.next');
    let prev = document.querySelector('.prev');

    next.addEventListener('click', function () {
        let items = document.querySelectorAll('.item');
        document.querySelector('.slide').appendChild(items[0]);
    });

    prev.addEventListener('click', function () {
        let items = document.querySelectorAll('.item');
        document.querySelector('.slide').prepend(items[items.length - 1]);
    });
</script>

</body>
</html>