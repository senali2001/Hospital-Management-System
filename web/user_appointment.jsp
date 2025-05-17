<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>User Appointment</title>
    <%@include file="component/allcss.jsp" %>

    <style type="text/css">
        .paint-card {
            box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
        }

        .backImg {
            background: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)),
                        url("img/hospital.jpeg");
            height: 20vh;
            width: 100%;
            background-size: cover;
            background-repeat: no-repeat;
        }
    </style>
</head>
<body>

    <%@include file="user/usernavbar.jsp" %>
    <br>
    

    <div class="container-fluid backImg d-flex align-items-center justify-content-center" style="height: 20vh;">
    <h2 class="text-white text-center">Book Your Appointment with Ease</h2>
</div>



    <div class="container p-3">
        <div class="row">
            <div class="col-md-6 p-5">
                <img alt="Doctor Image" src="https://media.istockphoto.com/id/1460981468/photo/smiling-indian-caring-doctor-supporting-holding-hand-of-olde-senior-female-patient-lying-on.jpg?s=612x612&w=0&k=20&c=qZrcUANaJBbDned216IM40I94CqSktxIONW0pbSzTD8=" class="img-fluid">
            </div>

            <div class="col-md-6">
                <div class="card paint-card">
                    <div class="card-body">
                        <p class="text-center fs-3">User Appointment</p>

                        <c:if test="${not empty errorMsg}">
                            <p class="fs-4 text-center text-danger">${errorMsg}</p>
                            <c:remove var="errorMsg" scope="session" />
                        </c:if>

                        <c:if test="${not empty sucMsg}">
                            <p class="fs-4 text-center text-success">${sucMsg}</p>
                            <c:remove var="sucMsg" scope="session" />
                        </c:if>

                        <form class="row g-3" action="addAppointment" method="post">
                            <input type="hidden" name="userid" value="${userObj.id}">

                            <div class="col-md-6">
                                <label class="form-label">Full Name</label>
                                <input required type="text" class="form-control" name="fullname">
                            </div>

                            <div class="col-md-6">
                                <label class="form-label">Gender</label>
                                <select class="form-control" name="gender" required>
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                </select>
                            </div>

                            <div class="col-md-6">
                                <label class="form-label">Age</label>
                                <input required type="number" class="form-control" name="age">
                            </div>

                            <div class="col-md-6">
                                <label class="form-label">Appointment Date</label>
                                <input type="date" class="form-control" required name="appoint_date">
                            </div>

                            <div class="col-md-6">
                                <label class="form-label">Email</label>
                                <input required type="email" class="form-control" name="email">
                            </div>

                            <div class="col-md-6">
                                <label class="form-label">Phone No</label>
                                <input maxlength="10" required type="number" class="form-control" name="phno">
                            </div>

                            <div class="col-md-6">
                                <label class="form-label">Diseases</label>
                                <input required type="text" class="form-control" name="diseases">
                            </div>

                            <div class="col-md-6">
                                <label class="form-label">Doctor</label>
                                <select required class="form-control" name="doctor">
                                    <option value="">--select--</option>
                                    <%
                                        DoctorDao dao = new DoctorDao(DBConnect.getConn());
                                        List<Doctor> list = dao.getAllDoctor();
                                        for (Doctor d : list) {
                                    %>
                                        <option value="<%=d.getId()%>">
                                            <%=d.getFullName()%> (<%=d.getSpecialist()%>)
                                        </option>
                                    <%
                                        }
                                    %>
                                </select>
                            </div>

                            <div class="col-md-12">
                                <label>Full Address</label>
                                <textarea required name="address" class="form-control" rows="3"></textarea>
                            </div>

                            <c:if test="${empty userobj}">
                                <a href="user_login.jsp" class="col-md-6 offset-md-3 btn btn-success">Login to Submit</a>
                            </c:if>

                            <c:if test="${not empty userobj}">
                                <button class="col-md-6 offset-md-3 btn btn-success">Submit</button>
                            </c:if>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<footer>
    <jsp:include page="component/footer.jsp" />
</footer>
</body>
</html>
