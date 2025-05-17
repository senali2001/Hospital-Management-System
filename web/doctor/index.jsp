<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.db.DBConnect"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
    <title>Doctor Dashboard</title>
    <%@include file="../component/allcss.jsp" %> <!-- your CSS, Bootstrap etc -->
    <style>
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }
        .page-container {
            min-height: 100vh;
            position: relative;
            padding-bottom: 70px; /* footer height */
            box-sizing: border-box;
        }

        
        .card {
            box-shadow: 0 0 10px rgba(0,0,0,0.15);
        }
        .dashboard-summary {
            margin-bottom: 30px;
        }
    </style>
</head>
<body>

<div class="page-container">

    <%@include file="navbar.jsp" %>

    <div class="container-fluid p-4">
        <h2 class="text-center mb-4">Doctor Dashboard</h2>

        <!-- Summary Cards -->
        <div class="row dashboard-summary">
            <%
                DoctorDao dao = new DoctorDao(DBConnect.getConn());
                List<Doctor> doctors = dao.getAllDoctor();
                int totalDoctors = doctors.size();
                // You can add other stats here, e.g. total specializations etc.
            %>

            <div class="col-md-4">
                <div class="card text-white bg-primary p-3">
                    <div class="card-body text-center">
                        <h5>Total Doctors</h5>
                        <p class="fs-2"><%= totalDoctors %></p>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card text-white bg-success p-3">
                    <div class="card-body text-center">
                        <h5>Specialists</h5><br>
                        
                        <p class="fs-2">10</p>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card text-white bg-info p-3">
                    <div class="card-body text-center">
                        <h5>Upcoming Appointments</h5><br>
                        <p class="fs-2">15</p> 
                    </div>
                </div>
            </div>
        </div>

        <!-- Doctors Table -->
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Doctor List</h4>
                <table class="table table-striped table-hover mt-3">
                    <thead>
                        <tr>
                            <th>Full Name</th>
                            <th>DOB</th>
                            <th>Qualification</th>
                            <th>Specialist</th>
                            <th>Email</th>
                            <th>Mobile No</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for (Doctor d : doctors) {
                        %>
                        <tr>
                            <td><%= d.getFullName() %></td>
                            <td><%= d.getDob() %></td>
                            <td><%= d.getQualification() %></td>
                            <td><%= d.getSpecialist() %></td>
                            <td><%= d.getEmail() %></td>
                            <td><%= d.getMobNo() %></td>
                            <td>
                                <a href="admin/edit_doctor.jsp?id=<%= d.getId() %>" class="btn btn-sm btn-warning">Edit</a>
                                <a href="../deleteDoctor?id=<%= d.getId() %>" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure to delete this doctor?');">Delete</a>
                            </td>
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

<footer>
    <jsp:include page="../component/footer.jsp" />
</footer>

</body>
</html>

