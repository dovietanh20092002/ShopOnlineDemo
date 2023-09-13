<%-- 
    Document   : signUP
    Created on : 18-05-2023, 20:52:51
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Sign Up Form by Colorlib</title>

        <!-- Font Icon -->
        <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

        <!-- Main css -->
        <link rel="stylesheet" href="css/signup.css"/>
    </head>
    <body>

        <div class="main">

            <section class="signup" >
                <!-- <img src="images/signup-bg.jpg" alt=""> -->
                <div class="container">
                    <div class="signup-content">
                        <form  action="DispatchController" method="POST" id="signup-form" class="signup-form" action="DispatchController">
                            <h2 class="form-title">Create account</h2>
                            <div class="form-group">
                                <input type="text" class="form-input" name="acc" placeholder="Your Account"  required/>
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-input" name="pass" placeholder="Your Password"  required/>
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-input" name="repass" placeholder="Your Re-Password" required  />
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-input" name="fullname"  placeholder="Your Fullname" required/>
                            </div>

                            <div class="form-group"> 
                                <input type="text" class="form-input" name="phone"  placeholder="Your Phone Number " required/>
                            </div>

                            <div class="form-group"> 
                                <input type="text" class="form-input" name="address"  placeholder="Your Address" required/>
                            </div><!-- comment -->

                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            <div class="form-group">
                                <input type="submit"  id="submit" class="form-submit" value="Signup" name="btAction"/>
                            </div>
                        </form>
                        <p class="text-danger" style="color: red ; background-color: gray ; width: auto ; margin: auto ;padding: auto ; text-align: center ; border-radius: 50px;">${mess}
                        </p> 
                    <p class="text-danger" style="color: red ; background-color: gray ; width: auto ; margin: auto ;padding: auto ; text-align: center ; border-radius: 50px;">${mess1}
                        </p> 

                       
                        <i><p style="color: blue ;  width: auto ; margin: auto ;padding: auto ; text-align: center ; border-radius: 50px;">${mess2}
                            </p></i>
                        <p class="loginhere">
                            Have already an account ? <a href="login.jsp" class="loginhere-link">Login here</a>
                        </p>


                    </div>
                </div>
            </section>

        </div>

        <!-- JS -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="js/signup.js"></script>
    </body>
</html>
