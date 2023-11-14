<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Register Page</title>
	<link type="text/css"
		rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/style.css"
	/>
	<%@include file="include/header.jsp" %>
</head>
<body>
	<%@include file="include/navbar.jsp" %>

	<div class="col-md-5 mx-auto p-5 my-5 form-login-register" >
	    <h2 class="text-center ">Register</h2>
	    
	    <c:if test="${not empty succMsg}">
	        <p class="text-success text-center">${succMsg}</p>
	        <c:remove var="succMsg" scope="session"/>
	    </c:if>
	        <c:if test="${not empty failMsg}">
	        <p class="text-dark text-center">${failMsg}</p>
	        <c:remove var="failMsg" scope="session"/>
	    </c:if>
	    <form  action="Register" method="post">
	        <div class="form-group">
	            <label for="email">Email</label>
	            <input type="email" class="form-control" required id="email" name="email" aria-describedby="emailHelp" placeholder="Enter email">
	        </div>
	        <div class="form-group">
	            <label >Name</label>
	            <input type="text" required class="form-control" id="name" name="name"  placeholder="Enter full name">
	        </div>
	        <div class="form-group">
	            <label >Phone</label>
	            <input type="text" class="form-control" id="phone" name="phone" required placeholder="Enter phone number">
	        </div>
	        <div class="form-group">
	            <label for="exampleInputPassword1">Password</label>
	            <input type="password" class="form-control" required name="password" id="password" placeholder="******">
	        </div>
	        <div class="form-group">
	            <label >Address</label>
	            <input type="text" class="form-control" id="address" name="address" required placeholder="Enter your address">
	        </div>
	        <div class="text-right mt-5">
	            <button type="submit" class="btn btn-primary " style="color: #fff;background-color: #1f1f52 !important;border-color: #181834 !important;">Register</button>	
	        </div>
	    </form>
	
	</div>
	
	<%@include file="include/footer.jsp" %>
</body>
</html>