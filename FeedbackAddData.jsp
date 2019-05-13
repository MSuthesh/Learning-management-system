<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
String email=request.getParameter("email");
String Name=request.getParameter("Name");
String comments=request.getParameter("comments");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cms", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into feedback(id,email,Name,comments)values('"+id+"','"+email+"','"+Name+"','"+comments+"')");
out.println("Data is successfully inserted!");
%>
<!DOCTYPE html>
<html>
<a href="FeedbackViewData.jsp">Click To View</a>
<body>
</body>
</html>
<%
}catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
out.print("");
}
%>