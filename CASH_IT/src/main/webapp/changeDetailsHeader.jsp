<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
    <!--Header-->
    <br>
    <div class="topnav sticky">
            <center><h2>Change Details<i class="fas fa-edit"></i></h2></center>
             <% String email=session.getAttribute("email").toString(); %>
            <h2><a href="home.jsp"><i class="fa fa-arrow-circle-left" aria-hidden="true"></i>Back</i></a></h2>
             <h2><a href="">Your Profile(<%out.println(email); %>) <i class='fas fa-user-alt'></i></a></h2>
            <a href="changePassword.jsp">Change Password <i class="fa fa-key" aria-hidden="true"></i></a>
            <a href="addChangeAddress.jsp">Add or change Address <i class="fa fa-map-marker" aria-hidden="true"></i></a>
            <a href="changeSecurityQuestion.jsp">Change Security Question <i class="fa fa-repeat" aria-hidden="true"></i></a>
            <a href="changeMobileNumber.jsp">Change Mobile Number <i class="fa fa-phone" aria-hidden="true"></i></a>
          </div>
           <br>
           <!--table-->
