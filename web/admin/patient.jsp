<%@ page import="java.util.*, com.dao.UserDao, com.entity.User" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>NovaLife Hospital - Registered Users</title>
        <%@include file="../component/allcss.jsp" %>
        <style type="text/css">
            .paint-card {
                box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
            }
            .backImg {
                background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4));
                height: 20vh;
                width: 100%;
                background-size: cover;
                background-repeat: no-repeat;
            }
        </style>
    </head>
    <body>

        <%@include file="navbar.jsp" %>

        <div class="container-fluid backImg p-5">
            <p class="text-center fs-2 text-white">Registered Users</p>
        </div>

        <%
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_management_system_db", "root", "");
            UserDao dao = new UserDao(conn);
            List<User> userList = dao.getAllUsers();
        %>

        <div class="container p-3">
            <div class="row">
                <div class="col-md-10 offset-md-1">
                    <div class="card paint-card">
                        <div class="card-body">
                            <p class="fs-4 fw-bold text-center text-success">User Details</p>
                            <table class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col">ID</th>
                                        <th scope="col">Full Name</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">Password</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        for (User u : userList) {
                                    %>
                                    <tr>
                                        <td><%= u.getId()%></td>
                                        <td><%= u.getFullName()%></td>
                                        <td><%= u.getEmail()%></td>
                                        <td><%= u.getPassword()%></td>
                                    </tr>
                                    <%
                                        }
                                    %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <footer>
            <jsp:include page="../component/footer.jsp" />
        </footer>

    </body>
</html>
