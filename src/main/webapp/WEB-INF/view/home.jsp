<%@page import="springdemo.entity.User"%>
<%@page import="springdemo.entity.Car"%>
<%@page import="java.util.List"%>
<%@page import="springdemo.dao.CarDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>List Car Rent</title>
	<link type="text/css"
		rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/style.css"
	/>
	<%@include file="include/header.jsp" %>
</head>
<body style="background: #ebebeb">
		<%
            User us = (User)session.getAttribute("userobj");
        %>
 	<%@include file="include/navbar.jsp" %>
    <div class="container-fluid p-5">
		<h3 class="text-center my-4"><strong>All Car</strong></h3>
            <div class="row">
				<c:forEach var="tempCar" items="${car}">
	            	<div class="col-md-3 my-2">
	                    <div class="card crd-ho">
	                        <div class="card-body text-center">
	                            <img alt=""src="./image/${tempCar.photo}"
	                                 style="width:100%;height:170px"class="img-thumblin">
	                            <strong class="name-oto">${tempCar.name}</strong>
	
	                            <div class="row my-2">
	                                <p class="col-6 text-center my-1" style="gap: 10px; display: flex; align-items: center;"><i class="fa fa-bolt" aria-hidden="true" ></i>${tempCar.catelogy}</p>
	
	                                <!-- <p class="col-6 text-center my-1"><i class="fa fa-bolt" aria-hidden="true"></i>${tempCar.discription}</p> -->
	                            </div>
	                            <p class="text-primary">Price: ${tempCar.price}</p>
	                            <div class="row ">
	                            	<%
	                                    if (us == null) {%>
	                                    	<a href="${pageContext.request.contextPath}/login" class="btn btn-primary btn-sm col-5 mx-auto"> Add Cart </a>  
	                                    
	                                    <%}else{
	                                    %>
	                                    	<a href="AddCart?cid=${tempCar.id}&&uid=${us.idUser}&&quan=1" class="btn btn-primary btn-sm col-5 mx-auto"> Add Cart </a>
	                                    <%
	}
	                                %>
	                                
	                                <input type="button" value="View Details"
										onclick="window.location.href='view-car?cid=${tempCar.id}'; return false;"
										class="add-button btn btn-success btn-sm col-5 mx-auto"
									/>
	                            </div>
	                        </div>
	                    </div>
	                </div>  
				</c:forEach>
          	</div>
	</div>
    <%@include file="include/footer.jsp" %>
</body>
</html>