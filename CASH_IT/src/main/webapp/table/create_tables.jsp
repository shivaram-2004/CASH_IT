<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>


<%

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String q1="create table users(name varchar(100),email varchar(100)primary key,mobilenumber bigint,securityQuestion varchar(200),answer varchar(200),password varchar(20),address varchar(100),city varchar(30),state varchar(30),country varchar(20))";
	String q2="create table amount(id int,amount varchar(10),amounttype varchar(100),value int,active varchar(10))";
	String q3="create table cart(email varchar(100),id int,quantity int,value int,total int,address varchar(500),city varchar(100),state varchar(100),country varchar(10),mobileNumber bigint,requestedDate varchar(20),exchangeddate varchar(20),paymentMethod varchar(200),TransctionId varchar(20),status varchar(10))";
	String q4="create table message(id int AUTO_INCREMENT,email varchar(100),subject varchar(200),body varchar(1000),PRIMARY KEY(id))";
	System.out.println(q1);
	//st.execute(q1);
	//st.execute(q2);
	//st.execute(q3);
	st.execute(q4);
	System.out.println("Table created");
	con.close();
	
}
catch(Exception e)
{
	System.out.print(e);
}
%>
