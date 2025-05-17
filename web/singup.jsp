<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NovaLife Hospital</title>
<style>
    :root {
        --midnight-green: #004d40;
       
    }

    .point-card {
        box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
    }
</style>

<%@ include file="component/allcss.jsp" %>

</head>
<body>


<%@ include file="component/navbar.jsp" %>

<br>
<br>
<div class="container p-5 mt-4">

    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card point-card">
                <div class="card-body">
                    <p class="fs-4 text-center">User Register</p>

                   <c:if test="${not empty sucMsg}">
    <p class="text-center text-success fs-3">${sucMsg}</p>
      <c:remove var=" sucMsg" scope="session"/>
    
</c:if>
<c:if test="${not empty errorMsg}">
    <p class="text-center text-danger fs-3">${errorMsg}</p>
      <c:remove var="errorMsg" scope ="session"/>
    
</c:if>
                   
                    <form action="user_register" method="post">
                        <div class="mb-3">
                            <label class="form-label">Full Name</label>
                            <input required type="text" name="fullname" class="form-control" />
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Email</label>
                            <input required type="email" name="email" class="form-control" />
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input required type="password" name="password" class="form-control" />
                        </div>
                        
                        <button type="submit" class="btn bg-success text-white col-md-12">Register</button>
                    </form>
                    <br>
                   If You have already account?<a href="user_login.jsp" class="clink">Log In</a>

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