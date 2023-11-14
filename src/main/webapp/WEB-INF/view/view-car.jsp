<%@page import="springdemo.entity.Car"%>
<%@page import="springdemo.dao.CarDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>View Car</title>
	<link type="text/css"
		rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/style.css"
	/>
	<%@include file="include/header.jsp" %>
</head>
<body style="background: #ebebeb">
   		<%
            User us = (User)session.getAttribute("userobj");
      
            int cid = Integer.parseInt(request.getParameter("cid"));
            CarDaoImpl dao2 = new CarDaoImpl();
            
        %>
   <%@include file="include/navbar.jsp" %>
   <div class="container my-5 p-4 row bg-white mx-auto" style="border-radius: 10px; height: 500px" >
       <div class="col-md-7 text-center" style="line-height: 450px; border-right: 1px solid #919190">
           
           <img style="width: 80%; height: 300px; background-repeat: no-repeat" src="./image/${tempCar.photo}" alt="alt"/>
       </div>
       <div class="col-md-5" var="tempCar" items="${car}">
          <h4>Mazda 2019</h4>
          <hr/>
          <div class="row my-2">
              <p class="col-6 text-center my-1"><i class="fa fa-car" aria-hidden="true"></i> ${tempCar.catelogy}</p>
              
              <h6 class="col-12 my-1"><i class="fa fa-ellipsis-v" aria-hidden="true"></i> Describe:</h6>

              <p class="col-12 my-1" style="text-align: justify;"> ${tempCar.discription}</p>
          </div>
          <h6 class="text-primary text-center mt-4"> <i class="fa fa-money" aria-hidden="true"></i> Price: ${tempCar.price}</h6>
          <div class="text-center mt-4">
              <%if (us == null) {%>
                <a href="${pageContext.request.contextPath}/login" class="btn btn-primary btn-sm col-5 mx-auto"> Add Cart </a>  
                
              <%}else{
                %>
                <a href="AddCart?cid=${tempCar.id}&&uid=<%=us.getIdUser()%>&&quan=1" class="btn btn-primary btn-sm col-5 mx-auto"> Add Cart </a>
                <%
			}%>

          </div>
       </div>
       
   </div>
   <%@include file="include/footer.jsp" %>
</body>
</html>