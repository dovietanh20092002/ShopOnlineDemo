<%-- 
    Document   : mycart
    Created on : 27-06-2023, 10:40:29
    Author     : ADMIN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Shopping cart</h1>

        <table    style="border = 5cm "  >
            <tr>
                <th>No</th>
                <th>Name</th>
                <th>QUantity</th>
                <th>Price</th>
                <th>Total money</th>
                <th>Action</th>

            </tr>
            <c:set var="o" value="${requestScope.cart}" />
            <c:set var="tt" value="0" />
            <c:forEach items="${o.getItems()}" var="i">
                <c:set var="tt" value="${tt+1}"/>

                <tr>
                    <td>${tt}</td>
                    <td>${i.product.nameProduct}</td>
                    <td style="text-align: center"> 
                        <button><a href="process?num=-1&idP=${i.product.idP}">-</a></button>
                        ${i.quantity}
                        <button><a href="process?num=1&idP=${i.product.idP}">+</a></button></td>
                    <td>
                        $<fmt:formatNumber pattern="##.#" value="${i.price}"/>
                    </td>

                    <td>
                        $<fmt:formatNumber pattern="##.#" value="${(i.price * i.quantity)}"/>
                    </td> 
                    <td style="text-align: center">
                        <form action="process" method="post">
                            <input type="hidden"  name="id" value="${i.product.idP}"/> 
                            <input type="submit" value="return item"/>
                        </form>

                    </td>


                </tr>
            </c:forEach> 




        </table>

        <h1>Total : ${o.totalMoney}</h1>
        <form action="checkout" method="post">
            <input type="submit" value="checkout">
        </form>
        <a href="ProductController">Click me to tiep tuc shopping </a>
    </body>
</html>
