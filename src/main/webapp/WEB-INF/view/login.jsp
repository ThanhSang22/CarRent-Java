<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login Page</title>
	<link type="text/css"
		rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/style.css"
	/>
	<%@include file="include/header.jsp" %>
</head>
<body>
	<%@include file="include/navbar.jsp" %>

   <div class="col-md-5 mx-auto p-5 my-5 form-login-register" >
       <h2 class="text-center ">Login</h2>
       <c:if test="${not empty failedMsg}">
           <h5 class="text-center text-danger">${failedMsg}</h5>
           <c:remove var="failedMsg" scope="session"/>
       </c:if>
       <c:if test="${not empty succMsg}">
           <h5 class="text-center text-success">${succMsg}</h5>
           <c:remove var="succMsg" scope="session"/>
       </c:if>
       <form action="Login" method="post" >
           <div class="form-group">
               <label for="email">Email address</label>
               <input type="email" class="form-control" required id="email" name="email" aria-describedby="emailHelp" placeholder="Enter email">
           </div>
           <div class="form-group">
               <label for="exampleInputPassword1">Password</label>
               <input type="password" class="form-control" required name="password" id="password" placeholder="******">
           </div>
           <div class="form-group">
               <a href="${pageContext.request.contextPath}/register" >Do not have an account?</a>
               
           </div>
           <div class="text-right mt-5">
               <button type="submit" class="btn btn-primary ">Login</button>
           </div>
       </form>

   </div>


   <%@include file="include/footer.jsp" %>
</body>
</html>