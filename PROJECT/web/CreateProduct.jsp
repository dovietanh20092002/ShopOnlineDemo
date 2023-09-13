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
        <title></title>

        <!-- Font Icon -->
        <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

        <!-- Main css -->
        <link rel="stylesheet" href="css/signup.css"/>
    </head>
    <body>

        <div class="main">

            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <h2 class="form-title">Create Product </h2>
            <div class="container">
                <div class="signup-content">
                    <form  action="CreateProduct"  method="POST ">

                        <div class="form-group">
                            <input type="text" class="form-input" name="txtNameP" placeholder="Name Product"  required/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-input" name="txtImgP" placeholder="Image"  required/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-input" name="txtPriceP" placeholder="Price" required  />
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-input" name="txtTiltle"  placeholder="Tiltle" required/>
                        </div>

                        <div class="form-group"> 
                            <input type="text" class="form-input" name="txtDescriptionP"  placeholder="DescriptionP" required/>
                        </div>

                        <div class="form-group"> 
                            <input type="text" class="form-input" name="txtIdCategory"  placeholder="Id Category" required/>
                        </div><!-- comment -->


                        <div class="form-group">
                            <input type="submit"  id="submit" class="form-submit" value="Create" name="btAction"/>
                        </div>
                    </form>
                    <p class="text-danger" style="color: red ; background-color: gray ; width: auto ; margin: auto ;padding: auto ; text-align: center ; border-radius: 50px;">${mess}
                    </p> 
                    <p class="text-danger" style="color: red ; background-color: gray ; width: auto ; margin: auto ;padding: auto ; text-align: center ; border-radius: 50px;">${mess1}
                    </p> 


                    <i><p style="color: blue ;  width: auto ; margin: auto ;padding: auto ; text-align: center ; border-radius: 50px;">${mess2}
                        </p></i>
                    <p class="loginhere">
                        Quan về Trang Chủ ? <a href="index.jsp" class="loginhere-link"> Here</a>
                    </p>


                </div>
            </div>

        </div>

        <!-- JS -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="js/signup.js"></script>
    </body>
</html>
