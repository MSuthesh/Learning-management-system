<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cms", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM marks WHERE id ="+id);
out.println("Data Deleted Successfully!");
%>
<!DOCTYPE html>
<html>
<a href="ViewMarks.jsp">Click To View</a>
<body>
</body>
</html>
<%
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>