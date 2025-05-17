<%@page import="java.util.List"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.entity.Specialist"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <br>
        <div class="container-fluid p-3">
        <div class="row gy-4">
    
    <div class="col-md-5 offset-md-4">
                <div class="card paint-card">
                    <div class="card-body">
                        <p class ="fs-3 text-center">Add Doctor</p>
                        <c:if test="${not empty sucMsg}">
    <p class="text-center text-success fs-3">${sucMsg}</p>
      <c:remove var=" sucMsg" scope="session"/>
    
</c:if>
<c:if test="${not empty errorMsg}">
    <p class="text-center text-danger fs-3">${errorMsg}</p>
      <c:remove var="errorMsg" scope ="session"/>
    
</c:if>
                        <form action="../addDoctor" method="post">
                            <div class="mb-3">
                                <label class= "form-label">Full Name</label> <input type="text" required name="full_name" class="form-control">
                            </div>
                            
                            <div class="mb-3">
                                <label class= "form-label">DOB</label> <input type="date" required name="dob" class="form-control">
                            </div>
                            
                            <div class="mb-3">
                                <label class= "form-label">Qualification</label> <input required name="qualification" type="text" class="form-control">
                            </div>
                            <div class="mb-3">
                                <label class= "form-label">Specialist</label> <select name="specialist" required class="form-control">
                                    <option value="1">Select</option>
                                     <option value="2">Neurologist</option>
                                     <option value="3">Cardiologist </option>
                                     <option value="4">Pediatrician</option>
                                     <option value="5">Dermatologist</option>
                                     <option value="6">ENT Specialist</option>
                                     <option value="7">Oncologist</option>
                                     <option value="8">Orthopedic Surgeon</option>
                                     <option value="9">Psychiatrist</option>
                                     <option value="10">Gynecologist</option>
                                     <option value="11">General Physician</option>
                                        
                                    
                                </select>
                            </div>
                            
                            <div class="mb-3">
                                <label class= "form-label">Email</label> <input type="email" required name="email" class="form-control">
                            </div>
                            
                            <div class="mb-3">
                                <label class= "form-label">Mob No</label> <input type="text" required name="mobno" class="form-control">
                            </div>
                            
                            <div class="mb-3">
                                <label class= "form-label">Password</label> <input type="password" required name="password" class="form-control">
                            </div>
                            
                            <button type="submit" class="btn btn-success">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
            
            
            
                       
        </div>
        </div>
     <!-- Footer -->
    <footer>
        <jsp:include page="../component/footer.jsp" />
    </footer>
  

</body>
</html>
