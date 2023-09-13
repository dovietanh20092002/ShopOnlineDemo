<%-- 
    Document   : service
    Created on : 17-05-2023, 11:40:48
    Author     : ADMIN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

    <body class="sub_page">
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
                                            <a class="nav-link" href="#">Manager Product</a>
                                        </li></c:if>
                                    <c:if test="${sessionScope.acc.roleID == false }" >
                                        <li class="nav-item">
                                            <a class="nav-link" href="viewCart.jsp">My Cart</a>
                                        </li></c:if>
                                    <c:if test="${sessionScope.acc.roleID == true }" >
                                        <li class="nav-item">
                                            <a class="nav-link" href="AccountController">Manager User </a>
                                        </li></c:if>
                                    <c:if test="${sessionScope.acc == null }" ><li class="nav-item">
                                            <a class="nav-link" href="login.jsp">Login /register </a>
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
                </div>
                </nav>
        </div>
    </header>
    <!-- end header section -->
</div>

<br> <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container px-4 px-lg-5">
        <form class="d-flex " action="SearchController" method="post">
            <input class="form-control me-2" type="text"  name="search" placeholder="Tìm kiếm sản phẩm" value="${search}">
            <input type="submit" value="Search" name="Search" />
        </form>

        <%-- <form class="d-flex">
        <button class="btn btn-outline-dark" type="submit">
            <i class="bi-cart-fill me-1"></i>
            Cart
            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
        </button>
    </form> --%>
    </div>
</nav>
<div class="body_bg layout_padding">

    <!-- service section -->
    <!-- Section-->
    <section class="py-5">
        <div class="container px-4 px-lg-5 mt-5">
            <div class="row">
                <div class="col-md-3">

                    <h3><i>List Category </i></h3>
                    <ol type="1" start="1"class="list-group " style="margin-bottom: 10px ;padding-bottom: 10px">
                        <li class="list-group-item text-black" style="margin-bottom: 10px" ><a href="ProductController"><b>Tất cả hình ảnh </b></a></li>
                            <c:forEach items="${listC}" var="item" >
                            <li class="list-group-item text-black" style="margin-bottom: 10px"><a href="ProductController?idCC=${item.idC}"><b>${item.getNameC()}</b></a></li>

                        </c:forEach>              
                    </ol>


                </div>
                <div class="col-md-9" >




                    <h3> List Product </h3>
                    <c:forEach items="${requestScope.listP}" var = "item">  

                        <div class="col-12 col-md-6 m-lg-2  " style="margin-bottom: 5px">
                            <div class="card">  
                                <input type="hidden" name="idP" value="${item.getIdP()}" />
                                <img class="card-img-top" " src="${item.getImgProduct()}" alt="..." />

                                <div class="card-body">
                                    <div class="text-center">

                                        <h5 class="fw-bolder" >
                                            <a href="detail?nameP=${item.getNameProduct()}" >${item.getNameProduct()}</a></h5>



                                    </div>
                                </div>
                                $ ${item.getPriceProduct() * 2 }


                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                    <a href="AddItemServlet?nameP=${item.getNameProduct()}" >  <input  style="text-align: center"type="submit" value="Add Cart" />  </a> 
                                </div>
                            </div> </div>

                    </c:forEach>

                </div>   </div>   
        </div>
</div>
</section>

<!-- Footer End -->
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript">
    //  function buy(idP) {
    //  var m = document.f.num.value;
    //   document.f.action = "buy?idP=" + idP + "&num=" + m;
    //  document.f.submit();
    //}
</script>
</body>

</html>
