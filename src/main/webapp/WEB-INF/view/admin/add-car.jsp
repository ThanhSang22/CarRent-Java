<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Admin Add Car</title>
    <link type="text/css"
	rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css"
	/>
    <%@include file="header.jsp" %>
</head>
<body style="background: #ebebeb">
    <%@include file="navbar.jsp" %>
     <c:if test="${empty userobj}">
        <c:redirect url="../login.jsp"></c:redirect>
       
    </c:if>
    <c:if test="${not empty userobj}">
        <c:if test="${not empty userobj.email}">
            <c:redirect url="../list-car.jsp"></c:redirect>
        </c:if>
                   
    </c:if>
    <div class="col-md-5 mx-auto p-5 my-5 form-login-register" >
        <h2 class="text-center ">Add New A Car</h2>

        <c:if test="${not empty succMsg}">
            <p class="text-success text-center">${succMsg}</p>
            <c:remove var="succMsg" scope="session"/>
        </c:if>
        <c:if test="${not empty failedMsg}">
            <p class="text-dark text-center">${failedMsg}</p>
            <c:remove var="failedMsg" scope="session"/>
        </c:if>
            <form  action="../AdminAddCar" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label >Name Car</label>
                <input type="text" class="form-control" required name="nameCar" placeholder="Enter name car">
            </div>
            <div class="form-group">
                <label >Price</label>
                <input type="Number" required class="form-control" name="price"   placeholder="10000$">
            </div>
            <div class="row">
               
                <div class="form-group col-md-6">
                    <label >Catelogy</label>
                    <select class="form-control" name="typeFuel">
                        <option value="Gasoline">Gasoline fuel</option>
                        <option value="Electric">Electric fuel</option>

                    </select>
                </div>
            </div>
            <div class="form-group">
                <label >Describe</label>
                <textarea class="form-control" required name="describe" rows="3"></textarea>
            </div>
            <div class="form-group">
                <label >Image Car</label>
                <input name="photo" type="file" class="form-control" required placeholder="2020">
            </div>
            <div class="text-right mt-5">
                <button type="submit" class="btn btn-primary ">Add A Car</button>


            </div>
        </form>

    </div>


    <%@include file="footer.jsp" %>
</body>
</html>