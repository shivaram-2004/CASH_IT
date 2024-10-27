
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Login</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <form action="loginAction.jsp" method="post">
  <input type="email" name="email" placeholder="Enter email" required>
  <input type="password" name="password" placeholder="Enter password" required>
  <input type="submit" value="Login">
  
  </form>
     
      <h2><a href="signup.jsp">SignUp</a></h2>
       <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
  </div>
  <div class='whysignLogin'>
  <%
  String msg=request.getParameter("msg");
  if("notexist".equals(msg))
  {
  %>
  <h1>Incorrect Username or Password</h1>
<%} %>
<%
if("invalid".equals(msg)){
%>
<h1>Something Went Wrong! Try Again !</h1>
<%} %>
    <h2>CASH IT</h2>
    <p>Cash it is a platform  that allows the users to request money in the required forms.</p>
  </div>
</div>

</body>
</html>