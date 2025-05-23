<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.entity.Specialist"%>
<%@page import="com.dao.SpecialistDao"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>Nova Hospital</title>
        <%@include file="../component/allcss.jsp" %>
        <style type="text/css">
            .paint-card{
                box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
            }
        </style>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="container-fluid p-3">
            <div class="row">

                <div class="col-md-4 offset-md-4">
                    <div class="card paint-card">
                        <div class="card-body">
                            <p class ="fs-3 text-center">Edit Doctor Details</p>
                            <c:if test="${not empty errorMsg }">
                                <p class= "fs-3 text-center text-danger">${errorMsg}</p>
                                <c:remove var="errorMsg" scope="session" />
                            </c:if>
                            <c:if test="${not empty sucMsg }">
                                <div class= "fs-3 text-center text-success" role="alert">${sucMsg}</div>
                                <c:remove var="sucMsg" scope="session" />
                            </c:if>
                            <%
                                int id = Integer.parseInt(request.getParameter("id"));
                                DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
                                Doctor d = dao2.getDoctorById(id);
                            %>
                            
                            <% if (d != null) { %>
                            <form action="../updateDoctor" method="post">
                                <div class="mb-3">
                                    <label class= "form-label">Full Name</label>
                                    <input type="text" required name="full_name" class="form-control" value="<%=d.getFullName()%>">
                                </div>

                                <div class="mb-3">
                                    <label class= "form-label">DOB</label>
                                    <input type="date" value="<%=d.getDob()%>" required name="dob" class="form-control">
                                </div>

                                <div class="mb-3">
                                    <label class= "form-label">Qualification</label>
                                    <input required value="<%=d.getQualification()%>" name="qualification" type="text" class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label class= "form-label">Specialist</label>
                                    <select name="specialist" required class="form-control">
                                        <option value="<%=d.getSpecialist()%>"><%=d.getSpecialist()%></option>
                                        <%
                                            SpecialistDao sDao = new SpecialistDao(DBConnect.getConn());
                                            List<Specialist> sList = sDao.getAllSpecialist();
                                            for (Specialist s : sList) {%>
                                        <option value="<%=s.getSpecialistName()%>"><%=s.getSpecialistName()%></option>
                                        <%}
                                        %>
                                    </select>
                                </div>

                                <div class="mb-3">
                                    <label class= "form-label">Email</label>
                                    <input type="text" value="<%=d.getEmail()%>" required name="email" class="form-control">
                                </div>

                                <div class="mb-3">
                                    <label class= "form-label">Mob No</label>
                                    <input type="text" value="<%=d.getMobNo()%>" required name="mobno" class="form-control">
                                </div>

                                <div class="mb-3">
                                    <label class= "form-label">Password</label>
                                    <input required value="<%=d.getPassword()%>" name="password" type="text" class="form-control">
                                </div>
                                <input type="hidden" name="id" value="<%=d.getId()%>">


                                <button type="submit" class="btn btn-success col-md-12">Update</button>
                            </form>
                                <% } else { %>
    <p class="text-danger text-center">Doctor data not found or invalid ID.</p>
<% } %>
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
