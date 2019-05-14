<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String userName=request.getParameter("userName");
String firstName=request.getParameter("firstName");
String lastName=request.getParameter("lastName");
String designation=request.getParameter("designation");
String email=request.getParameter("email");
String password=request.getParameter("password");
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cms", "root", "");
		Statement st=conn.createStatement();
		int i=st.executeUpdate("insert into registration(userName,firstName,lastName,designation,email,password)values('"+userName+"','"+firstName+"','"+lastName+"','"+designation+"','"+email+"','"+password+"')");
		out.println("<h1>Thank you for register ! Please <a href='StaffLogin.jsp'>Login</a> to continue.<h1>");
	}
	catch(Exception e)
	{
		out.println("<h1>Your Username Is Already Existing<h1>");
		System.out.print(e);
		e.printStackTrace();
	}
%>