<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 13-Jan-22
  Time: 18:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Shopping List</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<center>
    <p>
        <strong>Model List</strong>
    </p>
    <a href="${pageContext.request.contextPath }"
       mce_href="${pageContext.request.contextPath }/CheckoutCart.jsp">View Cart</a>
    <br/><br/>

    <table width="75%" border="1">
        <tr>
            <td>
                <form name="modelDetail1" method="POST" action="CartController">
                    <strong>Model:</strong>Laptop
                    <input type="hidden" name="modelNo" value="Laptop">
                    <p>
                        <strong>Quantity:<input type="text" size="2" value="1" name="quantity"></strong>
                    </p>
                    <p>
                        <strong>Price:</strong>$278.00
                        <input type="hidden" name="price" value="10">
                    </p>
                    <input type="hidden" name="action" value="add">
                    <input type="submit" name="addToCart" value="Add To Cart">
                </form>
            </td>


            <td>
                <form name="modelDetail2" method="POST" action="CartController">
                    <strong>Model</strong>: Smartphone
                    <input type="hidden" name="modelNo" value="Smartphone">
                    <p>
                        <input type="text" size="2" value="1" name="quantity">
                    </p>
                    <p>
                        <strong>Price</strong>: $15.00
                        <input type="hidden" name="price" value="20">
                    </p>
                    <input type="hidden" name="action" value="add">
                    <input type="submit" name="addToCart" value="Add To Cart">
                </form>
            </td>
        </tr>


        <tr>
            <td>
                <form name="modelDetail3" method="POST" action="CartController">
                    <p>
                        <strong>Model:</strong> Watches
                        <input type="hidden" name="modelNo" value="Watches">
                    </p>
                    <p>
                        <strong>Quantity:</strong>
                        <input type="text" size="2" value="1" name="quantity">
                    </p>
                    <p>
                        <strong>Price: $100.00</strong>
                        <input type="hidden" name="price" value="30">
                    </p>
                    <input type="hidden" name="action" value="add">
                    <input type="submit" name="addToCart" value="Add To Cart">
                </form>
            </td>

            <td>
                <form name="modelDetail4" method="POST" action="CartController">
                    <p>
                        <strong>Model</strong>: Books
                        <input type="hidden" name="modelNo" value="Books">
                    </p>
                    <p>
                        <strong>Quantity</strong>:
                        <input type="text" size="2" value="1" name="quantity">
                    </p>
                    <p>
                        <strong>Price</strong>: $40.00
                        <input type="hidden" name="price" value="40">
                    </p>
                    <input type="hidden" name="action" value="add">
                    <input type="submit" name="addToCart" value="Add To Cart">
                </form>
            </td>
        </tr>

    </table>
</center>
</body>
</html>
