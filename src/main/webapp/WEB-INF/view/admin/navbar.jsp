<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<div class="fixed-top  bg-light">
    <div class="nav-top"></div>
    <div class="container-fluid p-3">
        <div class="row">
            <div class="col-md-3 text-center">
                <h3 class="text-primary"> <i class="fa fa-car" aria-hidden="true"></i> Admin MNB Store</h3>
            </div>
            <div class="col-md-6">
                
            </div>
            <c:if test="${not empty userobj}">
                <div class="col-md-3 text-center">
                    <a href="../login.jsp" class="btn btn-success mr-1"> <i class="fa fa-user-plus" aria-hidden="true"></i> ${userobj.fullName} </a>
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter"><i class="fa fa-sign-out" aria-hidden="true"></i> Logout </button>

                </div>
            </c:if>
            <c:if test="${empty userobj}">
                <div class="col-md-3 text-center">
                    <a href="../login.jsp" class="btn btn-success mr-1"> <i class="fa fa-sign-in" aria-hidden="true"></i> Login </a>
                    <a href="../register.jsp" class="btn btn-primary mr-1"> <i class="fa fa-user-plus" aria-hidden="true"></i> Register </a>

                </div>
            </c:if>

        </div>
    </div>
    
 

    <nav class="navbar navbar-expand-lg navbar-dark bg-custom p-3 ">

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" style="font-size: 20px;" href="home.jsp"><i class="fa fa-home" aria-hidden="true"></i> Home <span class="sr-only">(current)</span></a>
                </li>


            </ul>

        </div>
    </nav>

</div>
<div style="width: 100px; height: 130px;"></div>


<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">

        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center">
          <h2 class="mb-4">Do you want logout? </h2>
       <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
       <a href="../Logout" class="btn btn-success mr-1"> <i class="fa fa-sign-out" aria-hidden="true"></i> Logout </a>
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
  </div>
</div>