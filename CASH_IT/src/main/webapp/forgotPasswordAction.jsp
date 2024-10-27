<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=request.getParameter("email");
String mobilenumber=request.getParameter("mobilenumber");
String securityQuestion=request.getParameter("securityQuestion");
String answer=request.getParameter("answer");
String newpassword=request.getParameter("newpassword");


try{
	int check=0;
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from users where email='"+email+"'and mobilenumber='"+mobilenumber+"'and securityQuestion='"+securityQuestion+"' and answer='"+answer+"' ");
	while(rs.next())
	{
		check=1;
		st.executeUpdate("update users set password='"+newpassword+"' where email='"+email+"' ");
		response.sendRedirect("forgotPassword.jsp?msg=done");
	}
	if(check==0)
	{
		response.sendRedirect("forgotPassword.jsp?msg=Invalid");
	}
}
catch(Exception e)
{
	System.out.println(e);
	
}

%>
