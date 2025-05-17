<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Doctor Login</title>
    <link rel="stylesheet" href="allcss.jsp">
</head>
<body>
    <div class="login-box">
        <h2>Doctor Login</h2>
        <form action="DoctorLoginServlet" method="post">
            <div class="textbox">
                <input type="text" placeholder="Username" name="username" required>
            </div>
            <div class="textbox">
                <input type="password" placeholder="Password" name="password" required>
            </div>
            <input type="submit" class="btn" value="Login">
        </form>
    </div>
</body>
</html>




