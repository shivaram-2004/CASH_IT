<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String id=request.getParameter("id");
int quantity=1;
int value=0;//product price
int total=0;//product total
int cart_total=0;
int z=0;

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from amount where id='"+id+"'");
	while(rs.next())
	{
		value=rs.getInt(4);
		total=value;

	}
	ResultSet rs1=st.executeQuery("select * from cart where id='"+id+"'and email='"+email+"' and address is NULL");
	while(rs1.next())
	{
		cart_total=rs1.getInt(5);
		cart_total=cart_total+total;
		quantity=rs1.getInt(3);
		quantity=quantity+1;
		z=1;
	}
	if(z==1)
	{
		st.executeUpdate("update cart set total='"+cart_total+"',quantity='"+quantity+"' where id='"+id+"' and email='"+email+"' and address is NULL");
		response.sendRedirect("home.jsp?msg=exist");
	}
	if(z==0)
	{
		PreparedStatement ps=con.prepareStatement("insert into cart(email,id,quantity,value,total) values(?,?,?,?,?)");
		ps.setString(1, email);
		ps.setString(2, id);
		ps.setInt(3, quantity);
		ps.setInt(4, value);
		ps.setInt(5, total);
		ps.executeUpdate();
		response.sendRedirect("home.jsp?msg=added");
		
		
	}
	
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("home.jsp?msg=invalid");
}
%>