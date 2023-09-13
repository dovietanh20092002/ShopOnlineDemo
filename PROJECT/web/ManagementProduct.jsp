<%-- 
    Document   : ManagementAccount
    Created on : 07-06-2023, 20:57:17
    Author     : ADMIN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <title></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Premium Bootstrap 4 Landing Page Template" />
        <meta name="keywords" content="Appointment, Booking, System, Dashboard, Health" />
        <meta name="author" content="Shreethemes" />
        <meta name="email" content="support@shreethemes.in" />
        <meta name="website" content="../../../index.html" />
        <meta name="Version" content="v1.2.0" />
        <!-- favicon -->
        <link rel="shortcut icon" href="../assets/images/favicon.ico.png">
        <!-- Bootstrap -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- simplebar -->
        <link href="assets/css/simplebar.css" rel="stylesheet" type="text/css" />
        <!-- Select2 -->
        <link href="assets/css/select2.min.css" rel="stylesheet" />
        <!-- Date picker -->
        <link rel="stylesheet" href="../assets/css/flatpickr.min.css">
        <link href="assets/css/jquery.timepicker.min.css" rel="stylesheet" type="text/css" />
        <!-- Icons -->
        <link href="assets/css/materialdesignicons.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/remixicon.css" rel="stylesheet" type="text/css" />
        <link href="https://unicons.iconscout.com/release/v3.0.6/css/line.css"  rel="stylesheet">
        <!-- Css -->
        <link href="assets/css/style.min.css" rel="stylesheet" type="text/css" id="theme-opt" />

    </head>

    <body style="font-size: 12.5px;">
        <!-- Loader -->
        <div id="preloader">
            <div id="status">
                <div class="spinner">
                    <div class="double-bounce1"></div>
                    <div class="double-bounce2"></div>
                </div>
            </div>
        </div>
        <!-- Loader -->




        <!-- Start Page Content -->

        <div class="top-header">
            <div class="header-bar d-flex justify-content-between border-bottom">
                <div class="d-flex align-items-center">

                    <a  href="index.jsp" style=" margin-left: 15px">
                        <input type="submit" value="Back" />
                    </a>
                    <div class="search-bar p-0 d-none d-lg-block ms-2">
                        <div id="search" class="menu-search mb-0">
                            <form role="search" method="get" id="searchform" class="searchform">
                                <div>
                                    <input type="text" class="form-control border rounded-pill" name="s" id="s" placeholder="Search ...">
                                    <input type="submit" id="searchsubmit" value="SearchAcc">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>   </div>





        <div class="row" > 

            <div class="table-responsive bg-white shadow rounded">
                <table>
                    <thead>
                        <tr>
                            <th class="border-bottom p-3" style="min-width: 50px;">ID</th>
                            <th class="border-bottom p-3" style="min-width: 180px;">Name</th>
                            <th class="border-bottom p-3" style="min-width: 150px;">Image</th>
                            <th class="border-bottom p-3"> Price</th>
                            <th class="border-bottom p-3">Title</th>
                            <th class="border-bottom p-3">Description</th>
                            <th class="border-bottom p-3">Id Category </th><!-- comment -->


                            <th class="border-bottom p-3">Delete </th>
                            <th class="border-bottom p-3">Update</th>
                        </tr>
                    </thead>
                    <tbody>


                        <c:forEach items = "${listP}" var = "o" > 
                        <form action="UpdateProducts" method="POST">
                            <tr>
                                <th class="p-3">
                                    <input type="text" name="txtpID" readonly value=" ${o.getIdP()}"   />
                                </th>
                                <td class="p-3">
                                    <input type="text" name="txtNameP" value="${o.getNameProduct()}" />
                                </td>
                                <td class="p-3">
                                    <input type="text" name="txtImgP" value="${o. getImgProduct()}" />
                                </td>
                                <td class="p-3">
                                    <input type="text" name="txtPriceP" value="  ${o.getPriceProduct()}" />
                                </td>
                                <td class="p-3">
                                    <input type="text" name="txtTiltle" value="  ${o.getTiltleProduct()}" />
                                </td><!-- comment -->
                                <td class="p-3">  
                                    <input type="text" name="txtDescriptionP" value="${o.getDescriptionProduct()}" />
                                </td>
                                <td class="p-3">  
                                    <input type="text" name="txtIdCategory" value="${o.getIdC()}" />
                                </td>



                                <td> <input type="submit" value="Update" name="btAction" />

                                </td>

                        </form>
                        <td><a href="deleteProduct?pid=${o.getIdP()}"> <input type="submit" value="Delete" name="btAction" /></a>

                        </td>
                        </tr>

                    </c:forEach>  

                    </tbody>
                </table>



            </div><!--end row-->

            

        </div><!--end container-->



        <!--End page-content" -->






        <!-- javascript -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <!-- simplebar -->
        <script src="assets/js/simplebar.min.js"></script>

        <script src="assets/js/select2.min.js"></script>
        <script src="assets/js/select2.init.js"></script>

        <script src="assets/js/flatpickr.min.js"></script>
        <script src="assets/js/flatpickr.init.js"></script>

        <script src="assets/js/jquery.timepicker.min.js"></script> 
        <script src="assets/js/timepicker.init.js"></script> 
        <!-- Icons -->
        <script src="assets/js/feather.min.js"></script>
        <!-- Main Js -->
        <script src="assets/js/app.js"></script>

    </body>

</html>
