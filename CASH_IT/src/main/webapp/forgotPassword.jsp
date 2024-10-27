<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <form action="forgotPasswordAction.jsp" method="post">
  <input type="email" name="email" placeholder="Enter email" required>
    <input type="number" name="mobilenumber" placeholder="Enter mobile number" required>
    <select name="securityQuestion">
    <option value="What was your first car?">What was your first car?</option>
  <option value="What is the name of you pet?">What is the name of you pet?</option>
  <option value="Which school you studied?">Which school you studied?</option>
  <option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
    </select>
  <input type="text" name="answer" placeholder="Answer" required>
  <input type="password" name="newpassword" placeholder="Enter your new password to set" required>
    <input type="submit" value="Save">
  </form>
 
     
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
  <%
  String msg=request.getParameter("msg");
  if("done".equals(msg))
  {
%>
 <h1>Password Changed Successfully!</h1>
<%} %>
<%
if("Invalid".equals(msg))
{
%>

<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    <h2> cash It</h2>
    <p>Cash it is a platform  that allows the users to request money in the required forms.</p>
  </div>
</div>
</body>
</html>