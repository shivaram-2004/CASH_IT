This project is developed using JSP,HTML,CSS.
For storing data MYSQL databse is used and TOMCAT server is used.
Before cloning this project one should follow the following:
1)Create the following tables in MYSQL databasae:
users(name varchar(100),email varchar(100)primary key,mobilenumber bigint,securityQuestion varchar(200),answer varchar(200),password varchar(20),address varchar(100),city varchar(30),state varchar(30),country varchar(20))
amount(id int,amount varchar(10),amounttype varchar(100),value int,active varchar(10))
cart(email varchar(100),id int,quantity int,value int,total int,address varchar(500),city varchar(100),state varchar(100),country varchar(10),mobileNumber bigint,requestedDate varchar(20),exchangeddate varchar(20),paymentMethod varchar(200),TransctionId varchar(20),status varchar(10))
message(id int AUTO_INCREMENT,email varchar(100),subject varchar(200),body varchar(1000),PRIMARY KEY(id))
2)Tomcat server of version 10.1 must be installed
