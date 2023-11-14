<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>
<link type="text/css"
		rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/style.css"
	/>
</head>
<body>
	<c:if test="${empty userobj}">
	   <c:redirect url="${pageContext.request.contextPath}/login"></c:redirect>
	</c:if>
	<%@include file="include/navbar.jsp" %>
	<div class="container my-5">
	    <div class="my-5 bg-white p-5" style="border-radius: 10px" >
	       <h2 class="text-center py-3">Your Selected Item</h2>
	
	       <table class="table table-hover">
	           <thead >
	               <tr >
	                   <th>Image</th>
	                   <th>Car Name</th>
	                   <th>Category</th>
	                   <th>Price</th>
	                   <th>Quantity</th>
	                   <th>Total</th>
	                   <th>Action</th>
	
	               </tr>
	           </thead>
	           <tbody>
	               <%
	                   User us = (User) session.getAttribute("userobj");
	                   int total = 0;
	                   CartDaoImpl dao = new CartDaoImpl();
	                   List<Cart> list = dao.getCartByIdUser(us.getId());
	                   for (Cart cart : list) {
	                       total = total + (cart.getQuantity() * Integer.parseInt(cart.getPrice()));
	                       int t = cart.getQuantity() * Integer.parseInt(cart.getPrice());
	
	               %>
	               <tr>
	                   <td>
	                       <img src="image-car/<%=cart.getPhoto()%>" alt="alt" style=" width: 70px; height: 40px;"/>
	                   </td>
	                   <td><%=cart.getName()%></td>
	                   <td><%=cart.getCatelogy()%></td>
	                   <td>$<%=cart.getPrice()%></td>
	                   <td><%=cart.getQuantity()%></td>
	                   <td class="text-primary">$<%=t%></td>
	                   <td><button type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModalCenter11">Remove</button>  </td>
	               </tr>
	
	               <!-- Modal -->
	           <div class="modal fade" id="exampleModalCenter11" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	               <div class="modal-dialog modal-dialog-centered" role="document">
	                   <div class="modal-content">
	                       <div class="modal-header">
	
	                           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                               <span aria-hidden="true">&times;</span>
	                           </button>
	                       </div>
	                       <div class="modal-body text-center">
	                           <h2 class="mb-4">Do you want Remove this Cart? </h2>
	                           <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	                           <a href="RemoveCart?idCart=<%=cart.getIdCart()%>" class="btn btn-danger mr-1"> Remove </a>
	                       </div>
	                       <div class="modal-footer">
	
	                       </div>
	                   </div>
	               </div>
	           </div>
	
	           <%
	               }
	           %>
	
	
	           </tbody>
	       </table>
	       <div class="text-right">
	           <p class="text-danger">Total money: $<%=total%></p>
	           <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter111">Order Now</button>  
	            <!-- Modal -->
	           <div class="modal fade" id="exampleModalCenter111" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	               <div class="modal-dialog modal-dialog-centered" role="document">
	                   <div class="modal-content">
	                       <div class="modal-header">
	
	                           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                               <span aria-hidden="true">&times;</span>
	                           </button>
	                       </div>
	                       <div class="modal-body text-center">
	                           <h2 class="mb-4">Do you want Order? </h2>
	                           <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	                           <a href="AddOrder?idUser=<%=us.getId()%>" class="btn btn-primary mr-1"> Order Now </a>
	                        </div>
	                        <div class="modal-footer">
	
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	
	    </div>
	</div>
	<c:if test="${not empty msgCart}">
	   <div id="toast" >${msgCart}</div>
	   <script type="text/javascript">
	       const element = document.getElementById("toast");
	       function showToast()
	       {
	           setTimeout(() => {
	               element.classList.add("display");
	
	           }, 2000);
	       }
	       showToast();
	   </script>
	   <c:remove var="msgCart" scope="session"/>
	</c:if>
	<%@include file="include/footer.jsp" %>
</body>
<style type="text/css">
        /* toast */
        #toast {
            min-width: 300px;
            position: fixed;
            bottom: 30px;
            left: 50%;
            margin-left: -125px;
            background: #333;
            padding: 10px;
            color: white;
            text-align: center;
            z-index: 1;
            font-size: 18px;
            box-shadow: 0px 0px 100px #000;
            border-radius: 3px;

        }

        .display {
            display: none;
        }


    </style>
</html>