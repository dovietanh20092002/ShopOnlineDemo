<%-- 
    Document   : login
    Created on : 18-05-2023, 20:38:10
    Author     : ADMIN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<head>
    <title>Login Page</title>
    <!--Made with love by Mutiullah Samim -->

    <!--Bootsrap 4 CDN-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!--Fontawesome CDN-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

    <link rel="stylesheet" href="css/loginCss.css"/>

</head>
<body>zz
    <div class="container">
        <div class="d-flex justify-content-center h-100">
            <div class="card">
                <div class="card-header">
                    <h3>Sign In</h3>
                    <div class="d-flex justify-content-end social_icon">
                        <span><i class="fab fa-facebook-square"></i></span>
                        <form action="RedirectLoginGoogle" >              
                            <button name="btgoogle"> <span><i class="fab fa-google-plus-square"></i></span></button>
                        </form>
                        <span><i class="fab fa-twitter-square"></i></span>
                    </div>
                </div>
                <div class="card-body">
                    <c:set var="cookie " value="${pageContext.request.cookies}" /> 

                    <form action="DispatchController" method="POST">
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                            </div>
                            <input type="text" class="form-control" placeholder="username" name="txtUsername"  value="${cookie.cUser.value}" required>

                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <input type="password" class="form-control" placeholder="password" name="txtPassword"  value="${cookie.cPass.value}" required>
                        </div>
                        <div class="row align-items-center remember">
                            <input type="checkbox" name="remember" ${cookie.cRem != null?'checked': '' } >Remember Me
                        </div>

                        <div class="form-group">
                            <input type="submit" value="Login" class="btn float-right login_btn" name="btAction">
                        </div>
                    </form>
                </div>
                <p class="text-danger" style="color: red ; background-color: gray ; width: auto ; margin: auto ;padding: auto ; text-align: center ; border-radius: 50px;">${mess1}
                </p>
                <br>

                <div class="card-footer">
                    <div class="d-flex justify-content-center links">
                        Don't have an account?<a href="signUP.jsp">Sign Up</a>
                    </div>

                    <br><br>	<div class="d-flex justify-content-center">
                        <a href="index.jsp">Quay về trang chủ </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>