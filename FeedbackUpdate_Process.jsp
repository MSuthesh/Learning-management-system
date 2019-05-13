<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%!String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/cms";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String id = request.getParameter("id");
String email=request.getParameter("email");
String Name=request.getParameter("Name");
String comments=request.getParameter("comments");

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update feedback SET `id`=?,`email`=?,`Name`=?,`comments`=? WHERE id="+id; 
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2,email);
ps.setString(3,Name);
ps.setString(4,comments);

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
%>
<!DOCTYPE html>
<html>
<a href="FeedbackViewData.jsp">Click To View</a>
<body>
</body>
</html>
<%
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>