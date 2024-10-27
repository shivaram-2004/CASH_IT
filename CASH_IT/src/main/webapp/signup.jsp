<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <form action="signupAction.jsp" method="post">
  <input type="text" name="name" placeholder="Enter Name" required>
  <input type="email" name="email" placeholder="Enter email" required>
  <input type="number" name="mobilenumber" placeholder="Enter mobile number" required>
  <select name="securityQuestion" required>
  <option value="What was your first car?">What was your first car?</option>
  <option value="What is the name of you pet?">What is the name of you pet?</option>
  <option value="Which school you studied?">Which school you studied?</option>
  <option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
  
  </select>
  <input type="text" name="answer" placeholder="Answer" required>
  <input type="password" name="password" placeholder="Enter password" required>
  <input type="submit" value="signup">
  </form>
    
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h1>Successfully Registered!</h1>
<%} %>
<%
if ("Invalid".equals(msg))
{%>
<h1>Something went wrong 0r entered registerd email id! Try Again !</h1>
<%} %>
    <h2>Cash It</h2>
    <p>The web application that allows the users to request money basesd on their reqiurement.</p>
  </div>
</div>

</body>
</html>