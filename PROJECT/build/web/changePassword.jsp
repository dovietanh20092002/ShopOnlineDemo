<%-- 
    Document   : changePassword
    Created on : 05-07-2023, 10:28:30
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="css/changePass.css"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="login">
            <h1>Change Password</h1>
            <form method="post" action="ChangePassServlet" >
                <input type="text" name="user" placeholder="Username" required="required" />
                <input type="password" name="pass" placeholder="Password" required="required" />
                <input type="password" name="rePass" placeholder="Re-Password" required="required" />
                <button type="submit" class="btn btn-primary btn-block btn-large"> Save </button>
                <p class="text-danger" style="color: red ; background-color: gray ; width: auto ; margin: auto ;padding: auto ; text-align: center ; border-radius: 50px;">${mess1}
                </p>

                <p class="text-danger" style="color: red ; background-color: gray ; width: auto ; margin: auto ;padding: auto ; text-align: center ; border-radius: 50px;">${mess2}
                </p>
            </form>
            <br>	<div class="d-flex justify-content-center">
                <a href="index.jsp">Quay về trang chủ </a>
            </div>
        </div>
    </body>
</html>
