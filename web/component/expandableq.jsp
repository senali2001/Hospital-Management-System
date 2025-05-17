<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Carousel Questions</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 20px;
        }
        .questions-container {
            max-width: 700px;
            margin: 0 auto;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }
        .question-item {
            border-bottom: 1px solid #e0e0e0;
        }
        .question-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .question-header:hover {
            background-color: #f5f5f5;
        }
        .question-content {
            display: none;
            padding: 15px;
            background-color: #f9f9f9;
        }
        .dropdown-icon {
            transition: transform 0.3s ease;
        }
        .active .dropdown-icon {
            transform: rotate(180deg);
        }
    </style>
</head>
<body>
    <div class="questions-container">
        <%
            // Sample questions array - you can populate this dynamically
            String[][] questions = {
                {"What services does your hospital offer?", "Our hospital offers a wide range of services including emergency care, outpatient consultations, laboratory tests, surgeries, maternity care, and specialized treatments in various medical fields."},
                {"How can I book an appointment with a doctor?", " You can easily book an appointment through our website or mobile app by selecting your preferred doctor and time slot. Alternatively, you can call our front desk to schedule an appointment."},
                {"Does the hospital offer 24/7 emergency care?", " Yes, our hospital provides 24/7 emergency care. We have an experienced medical team available round the clock to assist with any urgent medical needs."},
                {"Can I view my medical records online?", "Yes, you can securely view your medical records, test results, and treatment history through our online patient portal. You just need to log in with your credentials."},
                {"What kind of technology do you use in surgeries?", "Our hospital is equipped with state-of-the-art technology in our operation theater, including advanced surgical equipment, robotic-assisted surgery tools, and real-time monitoring systems, ensuring precise and safe procedures."}
            };
        %>

        <% for(String[] question : questions) { %>
            <div class="question-item">
                <div class="question-header">
                    <%= question[0] %>
                    <span class="dropdown-icon">▼</span>
                </div>
                <div class="question-content">
                    <%= question[1] %>
                </div>
            </div>
        <% } %>
    </div>

    <script>
        document.querySelectorAll('.question-header').forEach(header => {
            header.addEventListener('click', () => {
                const questionItem = header.closest('.question-item');
                const content = questionItem.querySelector('.question-content');
                
                // Toggle current item
                questionItem.classList.toggle('active');
                content.style.display = 
                    content.style.display === 'block' ? 'none' : 'block';
                
                // Close other open items
                document.querySelectorAll('.question-item').forEach(item => {
                    if (item !== questionItem) {
                        item.classList.remove('active');
                        item.querySelector('.question-content').style.display = 'none';
                    }
                });
            });
        });
    </script>
</body>
</html>
