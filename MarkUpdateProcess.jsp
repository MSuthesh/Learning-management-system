<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%!String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/cms";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String id = request.getParameter("id");
String name=request.getParameter("name");
String marks=request.getParameter("marks");

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update marks SET `id`=?,`name`=?,`marks`=? WHERE id="+id; 
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2,name);
ps.setString(3,marks);

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
%>
<!DOCTYPE html>
<html>
<a href="ViewMarks.jsp">Click To View</a>
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