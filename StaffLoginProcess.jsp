<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String userName=request.getParameter("userName"); 
session.setAttribute("userName", userName);//THIS IS HOW WE DECLARE THE USER IN A SESSION
String password=request.getParameter("password"); 
Class.forName("com.mysql.jdbc.Driver"); 

java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cms","root","");
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from registration where userName='"+userName+"' and password='"+password+"'"); 
	try{
	rs.next();
	if(rs.getString("userName").equals(userName)&&rs.getString("password").equals(password)) 
	{ 
		response.sendRedirect("StaffLogged.jsp"); //IF USER SUCCESSFULLY LOG USER REDIRECTED TO LOGIN PAGE
	}
	}catch (Exception e) {
		out.println("<h1>Invalid password or username.<h1>");
	%>
	<!DOCTYPE html>
		<html>
			<head>
			</head>
				<body>
					<p>Please Try Again.<a href="StaffLogin.jsp">Login</a></p>
				</body>
		</html>
	<% 
	e.printStackTrace();
	}
%>
