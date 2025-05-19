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
                            <p class="fs-4 text-center">User Login</p>



                            <form action="userLogin" method="post">
                                <div class="mb-3">
                                    <label class="form-label">Email address</label>
                                    <input required type="email" name="email" class="form-control" />
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Password</label>
                                    <input required type="password" name="password" class="form-control" />
                                </div>
                                <button type="submit" class="btn bg-success text-white col-md-12">Login</button>
                            </form>
                            <br>
                            Don't have an account?<a href="singup.jsp" class="clink">Create One</a>

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