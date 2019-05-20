<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String marks=request.getParameter("marks");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cms?autoReconnect=true&useSSL=false", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into marks(id,name,marks)values('"+id+"','"+name+"','"+marks+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
out.print("the Students marks has been already inserted before!!");
}
%>
<!DOCTYPE html>
<html>
<a href="ViewMarks.jsp">Click To View</a>
<body>
</body>
</html>