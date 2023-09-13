<%-- 
    Document   : home
    Created on : 17-05-2023, 11:40:17
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <!-- Basic -->
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <!-- Site Metas -->
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta name="author" content="" />

        <title>MOBILE PHONES</title>

        <!-- slider stylesheet -->
        <link rel="stylesheet" type="text/css"
              href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />


        <!-- font wesome stylesheet -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

        <!-- bootstrap core css -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

        <!-- fonts style -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,600,700&display=swap" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet" />
        <!-- responsive style -->
        <link href="css/responsive.css" rel="stylesheet" />
    </head>

    <body>
        <div class="hero_area">
            <!-- header section strats -->
            <header class="header_section">
                <div class="container">
                    <nav class="navbar navbar-expand-lg custom_nav-container pt-3">
                        <a class="navbar-brand mr-5" href="index.jsp">
                            <img src="images/logo.png" alt="">
                            <span>
                                MOBILE PHONES
                            </span>
                        </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <div class="d-flex ml-auto flex-column flex-lg-row align-items-center">
                                <ul class="navbar-nav  ">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                                    </li>

                                    <li class="nav-item">
                                        <a class="nav-link" href="ProductController"> Product </a>
                                    </li>

                                    <c:if test="${sessionScope.acc.roleID == true }" >
                                        <li class="nav-item">
                                            <a class="nav-link" href="managementPServlet">Manager Product</a>
                                        </li></c:if>
                                    <c:if test="${sessionScope.acc.roleID == true }" >
                                        <li class="nav-item">
                                            <a class="nav-link" href="CreateProduct">Create Product</a>
                                        </li></c:if>
                                    <c:if test="${sessionScope.acc.roleID == false }" >
                                        <li class="nav-item">
                                            <a class="nav-link" href="viewCart.jsp">My Cart</a>
                                        </li></c:if> 
                                    <c:if test="${sessionScope.acc.roleID == false }" >
                                        <li class="nav-item">
                                            <a class="nav-link" href="ChangePassServlet">Change Password</a>
                                        </li></c:if> 
                                    <c:if test="${sessionScope.acc.roleID == true }" >
                                        <li class="nav-item">
                                            <a class="nav-link" href="AccountController">Manager User </a>
                                        </li></c:if>
                                    <c:if test="${sessionScope.acc == null }" ><li class="nav-item">
                                            <a class="nav-link" href="login">Login /register </a>
                                        </li></c:if>

                                    <c:if test="${sessionScope.acc != null }">  <li class="nav-item">
                                            <a class="nav-link" href="LogoutController">Log Out  </a>
                                        </li>

                                        <li class="nav-item">
                                            <a class="nav-link" href="#"> Hello account ${sessionScope.acc.fullname} </a>
                                        </li>
                                    </c:if>    

                                    <br>

                                </ul>

                            </div>
                        </div>
                    </nav>
                </div>
            </header>
            <!-- end header section -->
            <!-- slider section -->
            <section class=" slider_section position-relative">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active">01</li>

                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-7">
                                        <div class="detail-box">
                                            <div>
                                                <h1>
                                                    Welcome To <br>
                                                    <span>
                                                        Website sell mobile phones
                                                    </span>
                                                </h1>
                                                <p>
                                                    Website này giúp cung cấp thông tin về sản phẩm cho khách hàng dễ dàng đặt hàng đơn giản và nhanh chóng 
                                                </p>
                                                <div class="btn-box">
                                                    <a href="contact.jsp" class="btn-1">
                                                        Contact Us
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="custom_carousel-control">
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </section>
            <!-- end slider section -->
        </div>

        <!-- about section -->

        <section class="about_section layout_padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="detail-box">
                            <div class="heading_container">
                                <h2>
                                    About Us
                                </h2>
                            </div>
                            <p>
                                - Hàng chính hãng
                                <br>  - Đầy đủ hóa đơn
                                <br>      - Thanh toán linh hoạt
                                <br>       - Giao hàng toàn quốc
                                <br> -  Lắp đặt miễn phí
                                <br> -  Hỗ trợ 24/7
                            </p>
                            <a href="service.jsp">
                                Buy Now
                            </a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="img-box">
                            <img src="images/about-img.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end about section -->
        <div class="body_bg layout_padding">


            <!-- client section -->

            <section class="client_section layout_padding-top">
                <div class="d-flex justify-content-center">
                    <div class="heading_container">
                        <h2>
                            Điện thoại mới nhất 
                        </h2>
                    </div>
                </div>
                <div class="container layout_padding2">
                    <div id="carouselExample2Indicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExample2Indicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExample2Indicators" data-slide-to="1"></li>
                            <li data-target="#carouselExample2Indicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item ">
                                <div class="client_container">
                                    <div class="client-id">
                                        <div class="img-box">
                                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpydbEosQyUJ5PB7u29aBCzY2P63Ky5a4f1w&usqp=CAU" alt="">
                                        </div>
                                        <div class="client_name">
                                            <div>
                                                <h3>
                                                    iPhone 
                                                </h3>
                                                <p>

                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="client_detail">
                                        <div class="client_text" >
                                            <blockquote>
                                                <p>
                                                    iPhone là chiếc điện thoại thông minh đầu tiên và duy nhất trên thế giới chạy hệ điều hành iOS được sản xuất bởi Apple. Đến nay sau hơn 15 năm phát hành (kể từ ngày 29/6/2007), iPhone đã có 32 phiên bản khác nhau. 
                                                </p>
                                            </blockquote>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item active">
                                <div class="client_container">
                                    <div class="client-id">
                                        <div class="img-box">
                                            <img src="data:image/jpeg;base64,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" alt="">
                                        </div>
                                        <div class="client_name">
                                            <div>
                                                <h3>
                                                    OPPO
                                                </h3>
                                                <p>

                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="client_detail">
                                        <div class="client_text">
                                            <blockquote>
                                                <p>
                                                    OPPO là nhà sản xuất thiết bị điện tử lớn được thành lập từ năm 2004 có trụ sở đặt tại Trung Quốc. Hãng chuyên sản xuất các mặt hàng như điện thoại, đồng hồ thông minh, sạc dự phòng, tai nghe, ..........
                                                </p>
                                            </blockquote>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item ">
                                <div class="client_container">
                                    <div class="client-id">
                                        <div class="img-box">
                                            <img src="https://cdn11.dienmaycholon.vn/filewebdmclnew/public//userupload/images/dien-thoai-samsung-co-tot-khong-1.jpg" alt="">
                                        </div>
                                        <div class="client_name">
                                            <div>
                                                <h3>
                                                    Samsung
                                                </h3>
                                                <p>

                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="client_detail">
                                        <div class="client_text">
                                            <blockquote>
                                                <p>
                                                    Samsung là một thương hiệu điện tử, viễn thông có trụ sở đặt tại hàn Quốc, được thành lập vào năm 1938. Cho tới nay, Samsung là một trong những thương hiệu điện tử lớn trên thế giới, và là nhà sản xuất điện thoại lớn nhất trên thế giới. 
                                                </p>
                                            </blockquote>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </section>


            <!-- end client section -->






        </div>





        <!-- Footer Start -->


        <section class="container-fluid footer_section">
            <p>
            <h5 style="color: white; text-align: center " >Get In Touch</h5>
            <p><i class="fa fa-map-marker-alt me-3"></i>FPT University. FPT Education</p>
            <p><i class="fa fa-phone-alt me-3"></i>012 345 6789</p>
            <p><i class="fa fa-envelope me-3"></i>@example.com</p>
        </p>
    </section>

    <!-- Footer End -->


    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>

</body>

</html>
