<%@page import="java.util.Map"%>
<%@page import="Model.CartObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        a {
            color: blue;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <h1>Your Cart includes:</h1> 
    <c:set var="cart" value="${sessionScope.CART}"/>
    <c:if test="${not empty cart.items}">
        <table border="1">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Product</th>
                    <th>Quantity</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
            <form action="RemoveItemServlet">
                <c:forEach var="entry" items="${cart.items}" varStatus="counter">
                    <tr>
                        <td>${counter.count}</td>
                        <td>${entry.key}</td>
                        <td>${entry.value}</td>
                        <td>
                            <input type="checkbox" name="chkItem" value="${entry.key}" />                               
                        </td>
                    </tr> 
                </c:forEach>

                <tr>
                    <td colspan="3">
                        <a href="ProductController">Add more Items to your Cart</a>
                    </td>
                    <td>
                        <input type="submit" value="Remove selected Items" name="btAction" />
                    </td>
                </tr>
            </form>
        </tbody>
    </table>
</c:if> 
<c:if test="${empty cart.items}">
    <h1>No cart exited</h1>
</c:if>        
</body>
</html>