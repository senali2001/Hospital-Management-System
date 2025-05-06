<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Our Expert Doctors</title>
    <!-- Bootstrap CSS (CDN) -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .doctor-section {
            background-color: #004953;
            padding: 50px 20px;
        }

        .doctor-title {
            color: white;
            text-align: center;
            margin-bottom: 30px;
        }

        .scroll-container {
            overflow-x: auto;
            white-space: nowrap;
            padding-bottom: 10px;
             /* Hide scrollbar */
    scrollbar-width: none; /* Firefox */
    -ms-overflow-style: none;  /* Internet Explorer 10+ */
        }
        .scroll-container::-webkit-scrollbar {
    display: none; /* Chrome, Safari, Opera */
}

        .doctor-card {
            display: inline-block;
            width: 250px;
            margin-right: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            vertical-align: top;
        }

        .doctor-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        .doctor-card-body {
            padding: 15px;
        }

        .doctor-name {
            margin: 0;
            color: #004953;
            font-weight: bold;
        }

        .doctor-specialty {
            margin: 5px 0;
            color: #555;
        }

        .doctor-description {
            font-size: 13px;
            color: #666;
        }
    </style>
</head>
<body>

    <section class="doctor-section">
        <div class="container">
            <h2 class="doctor-title">Meet Our Expert Team</h2>

            <div class="scroll-container">
                <!-- Doctor 1 -->
                <div class="doctor-card">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKdBAYfUSm6c4OmkXpoB45oEOHrF4s3uXnuK8k54pgPQhymlLAWlwEhqNy5owiWtnGSIQ&usqp=CAU" alt="Doctor 1">
                    <div class="doctor-card-body">
                        <h5 class="doctor-name">Dr. A. Fernando</h5>
                        <p class="doctor-specialty">Cardiologist</p>
                        <p class="doctor-description">20+ years in treating heart conditions.</p>
                    </div>
                </div>

                <!-- Doctor 2 -->
                <div class="doctor-card">
                    <img src="https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg" alt="Doctor 2">
                    <div class="doctor-card-body">
                        <h5 class="doctor-name">Dr. B. Perera</h5>
                        <p class="doctor-specialty">Neurologist</p>
                        <p class="doctor-description">Expert in brain and nerve disorders.</p>
                    </div>
                </div>

                <!-- Doctor 3 -->
                <div class="doctor-card">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiO1ABhTbJ30hyaTS5yGuX0cFk_PN51aKV9g&s" alt="Doctor 3">
                    <div class="doctor-card-body">
                        <h5 class="doctor-name">Dr. C. Silva</h5>
                        <p class="doctor-specialty">Pediatrician</p>
                        <p class="doctor-description">Child healthcare specialist.</p>
                    </div>
                </div>

                <!-- Doctor 4 -->
                <div class="doctor-card">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxrvAnH8x8gRLqFn8FA0BMbruLuW03TLsVlDFBTbAryfo1ktNr1CEdZgpt8KdFMpzoXls&usqp=CAU" alt="Doctor 4">
                    <div class="doctor-card-body">
                        <h5 class="doctor-name">Dr. D. Jayasuriya</h5>
                        <p class="doctor-specialty">Dermatologist</p>
                        <p class="doctor-description">Skin and cosmetic treatments.</p>
                    </div>
                </div>

                <!-- Doctor 5 -->
                <div class="doctor-card">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeU7YgxJTSr6OM6f-hj5tsxPxO2Eh4BVgyjwxBWRNKAOi76ogcEpdOSjDXWZNfGyxAHIY&usqp=CAU" alt="Doctor 5">
                    <div class="doctor-card-body">
                        <h5 class="doctor-name">Dr. E. Rajapaksha</h5>
                        <p class="doctor-specialty">ENT Specialist</p>
                        <p class="doctor-description">Ear, nose and throat expert.</p>
                    </div>
                </div>

                <!-- Doctor 6 -->
                <div class="doctor-card">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYS0ZnFlqh0R1dCUOrLjCqPHe6NqKkRxlTi6b0GJJdIv0k0ZZZZdbRQZZX-c8KFjbQTbc&usqp=CAU" alt="Doctor 6">
                    <div class="doctor-card-body">
                        <h5 class="doctor-name">Dr. F. Gunasekara</h5>
                        <p class="doctor-specialty">Oncologist</p>
                        <p class="doctor-description">Cancer treatment and care.</p>
                    </div>
                </div>

                <!-- Doctor 7 -->
                <div class="doctor-card">
                    <img src="https://media.istockphoto.com/id/1372002650/photo/cropped-portrait-of-an-attractive-young-female-doctor-standing-with-her-arms-folded-in-the.jpg?s=612x612&w=0&k=20&c=o1QtStNsowOU0HSof6xQ_jZMglU8ZK565gHd655U6S4=" alt="Doctor 7">
                    <div class="doctor-card-body">
                        <h5 class="doctor-name">Dr. G. Karunaratne</h5>
                        <p class="doctor-specialty">Orthopedic Surgeon</p>
                        <p class="doctor-description">Bone and joint surgeries.</p>
                    </div>
                </div>

                <!-- Doctor 8 -->
                <div class="doctor-card">
                    <img src="https://media.post.rvohealth.io/wp-content/uploads/2020/07/doctor-doing-a-medical-exam-732x549-thumbnail.jpg" alt="Doctor 8">
                    <div class="doctor-card-body">
                        <h5 class="doctor-name">Dr. H. Nandasena</h5>
                        <p class="doctor-specialty">Psychiatrist</p>
                        <p class="doctor-description">Mental health and well-being.</p>
                    </div>
                </div>

                <!-- Doctor 9 -->
                <div class="doctor-card">
                    <img src="https://burst.shopifycdn.com/photos/a-doctor-smiles-while-holding-her-clipboard.jpg?width=1000&format=pjpg&exif=0&iptc=0" alt="Doctor 9">
                    <div class="doctor-card-body">
                        <h5 class="doctor-name">Dr. I. De Alwis</h5>
                        <p class="doctor-specialty">Gynecologist</p>
                        <p class="doctor-description">Women's health expert.</p>
                    </div>
                </div>

                <!-- Doctor 10 -->
                <div class="doctor-card">
                    <img src="https://media.istockphoto.com/id/523086961/photo/portrait-of-a-smiling-handsome-male-doctor.jpg?s=612x612&w=0&k=20&c=cB3cnru-8TC6iri2J1JDgGiF6e-L50jKghYdckIQqlQ=" alt="Doctor 10">
                    <div class="doctor-card-body">
                        <h5 class="doctor-name">Dr. J. Wijesinghe</h5>
                        <p class="doctor-specialty">General Physician</p>
                        <p class="doctor-description">Family medicine and general care.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

</body>
</html>

