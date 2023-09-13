<%-- 
    Document   : DetailProduct
    Created on : 15-06-2023, 19:25:07
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://fonts.googleapis.com/css?family=Bentham|Playfair+Display|Raleway:400,500|Suranna|Trocchi" rel="stylesheet">
        <link rel="stylesheet" href="css/detail.css"/>
    </head>
     <body>
       
            <div class="product-img">
                <img src="${p.imgProduct}" height="420" width="327">
            </div>
            <div class="product-info">
                <div class="product-text">
                    <h1>${p.nameProduct}</h1>
                    <h2>by studio and friends</h2>


                    <p>${p.descriptionProduct} </p>
                </div>
                <div class="product-price-btn">
                    <p style="color: red: red">$ ${p.priceProduct}</p>
                    <br>  <br>  
                    <button type="button">Dowload now</button>
                </div>
            </div>
            <br>  <br> 
       


    </body>
</html>
