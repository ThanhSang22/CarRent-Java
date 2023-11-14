<%@page import="springdemo.entity.Order"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Order Page</title>
	<link type="text/css"
		rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/style.css"
	/>
	<%@include file="include/header.jsp" %>
</head>
<body style="background: #ebebeb">
        
	<c:if test="${empty userobj}">
       <c:redirect url="/login.jsp"></c:redirect>
    </c:if>

    <%@include file="include/navbar.jsp" %>
    <div class="container my-5">
        <div class="my-5 bg-white p-5" style="border-radius: 10px" >
            <h2 class="text-center py-3">All your ordered</h2>

            <table class="table table-hover">
                <thead >
                    <tr >
                        <th>Image</th>
                        <th>Car Name</th>
                        <th>Category</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th>

                    </tr>
                </thead>
                <tbody>
                    <%
                        User us = (User) session.getAttribute("userobj");
                        OrderDaoImpl dao = new OrderDaoImpl();
                        List<Order> list = dao.getOrdersByIdUser(us.getId());
                        for (Order order : list) {
                            
                            int t = order.getQuantity() * Integer.parseInt(order.getTotalPrice());

                    %>
                    <tr>
                        <td>
                            <img src="image-car/<%=order.getPhoto()%>" alt="alt" style=" width: 70px; height: 40px;"/>
                        </td>
                        <td><%=order.getNameCar()%></td>
                        <td><%=order.getCategory()%></td>
                        <td>$<%=order.getPrice()%></td>
                        <td><%=order.getQuantity()%></td>
                        <td class="text-primary">$<%=t%></td>
                       
                    </tr>

                <%
                    }
                %>


                </tbody>
            </table>
            

        </div>
    </div>
        
    <%@include file="include/footer.jsp" %>
</body>
</html>