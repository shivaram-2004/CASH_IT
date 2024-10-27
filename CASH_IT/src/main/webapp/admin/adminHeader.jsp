
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/home-style.css">
<script src="https://kit.fontawesome.com/94792a0d3f.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body>
    <!--Header-->
    <br>
    <div class="topnav sticky">
    <% String email=session.getAttribute("email").toString(); %>
            <center><h2>cash It</h2></center>
            <a href="addNewProduct.jsp">Add New amount <i class="fa fa-plus-square" aria-hidden="true"></i></a>
            <a href="allProductEditProduct.jsp">All currencies & Edit currencies <i class='fab fa-elementor'></i></a>
            <a href="messagesReceived.jsp">Messages Received <i class="fa fa-comment" aria-hidden="true"></i></a>
            <a href="ordersReceived.jsp">Request Received <i class="fas fa-archive"></i></a>
            <a href="cancelOrders.jsp">Cancel Request <i class="fa-solid fa-rectangle-xmark"></i></i></a>
            <a href="deliveredOrders.jsp">Accepted Requests <i class='fas fa-dolly'></i></a>
            <a href="../logout.jsp">Logout <i class="fa fa-sign-out" aria-hidden="true"></i></a>
          </div>
           <br>
           <!--table-->
       </body>
           </html>
