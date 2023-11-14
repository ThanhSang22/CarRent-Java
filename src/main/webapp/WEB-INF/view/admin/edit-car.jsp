<%@page import="springdemo.entity.Car"%>
<%@page import="springdemo.dao.CarDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Edit Car</title>
<%@include file="header.jsp" %>
<body style="background: #ebebeb">
    <c:if test="${empty userobj}">
       <c:redirect url="../login.jsp"></c:redirect>
      
   </c:if>
   <c:if test="${not empty userobj}">
       <c:if test="${not empty userobj.email}">
           <c:redirect url="../index.jsp"></c:redirect>
       </c:if>
                  
   </c:if>
   <%@include file="navbar.jsp" %>
   <div class="col-md-5 mx-auto p-5 my-5 form-login-register" >
       <h2 class="text-center ">Edit A Car</h2>

       <c:if test="${not empty succMsg}">
           <p class="text-success text-center">${succMsg}</p>
           <c:remove var="succMsg" scope="session"/>
       </c:if>
       <c:if test="${not empty failedMsg}">
           <p class="text-dark text-center">${failedMsg}</p>
           <c:remove var="failedMsg" scope="session"/>
       </c:if>
           
           <%
               int id = Integer.parseInt(request.getParameter("id"));
               CarDaoImpl dao = new CarDaoImpl();
               Car car = dao.getId(id);
           %>
           <form  action="../AdminEditCar" method="post" var="tempCar" items="${car}">
               <div class="form-group">
	               <input type="hidden" name="id" value="${tempCar.id}"/>
	           </div>
	               
	           <div class="form-group">
	               <label >Name Car</label>
	               <input type="text" class="form-control" required name="nameCar" value="${tempCar.name}" placeholder="Enter full name car">
	           </div>
	           <div class="form-group">
	               <label >Price</label>
	               <input type="Number" required value="${tempCar.price}" class="form-control" name="price"   placeholder="10000$">
	           </div>
	           <div class="row">
	               
	               <div class="form-group col-md-6">
	                   <label >Type of fuel</label>
	                   <select class="form-control" value="${tempCar.catelogy}" name="typeFuel">
	                       <option value="Gasoline">Gasoline fuel</option>
	                       <option value="Electric">Electric fuel</option>
	
	                   </select>
	               </div>
	     
	           </div>
	           <div class="form-group">
	               <label >Describe</label>
	               <textarea class="form-control" required name="describe" rows="3">${tempCar.discription}</textarea>
	           </div>
	           
	           <div class="text-right mt-5">
	               <button type="submit" class="btn btn-primary ">Edit A Car</button>
	           </div>
	       </form>

   </div>


   <%@include file="footer.jsp" %>
</body>
</html>