<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "cms";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from feedback where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

      <!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dashboard - LMS</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/dashboard.css">
<link rel="stylesheet" href="css/extrastyle.css">

</head>
<body>


	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">LMS</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="#">Dashboard</a></li>
				</ul>
			<form class="navbar-form navbar-right"method="post" action="#">
					<input type="text" name="title" class="form-control"  placeholder="Search...">
					<button type="submit" name="title"  class="buttoncss">Search</button>
				</form>
			</div>
		</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-2 sidebar">
				<ul class="nav nav-sidebar">
					<li class="active">

						<div class="row intro">
							<div class="col-sm-12 col-md-6 col-lg-4">
								<div class="">
									<img class="profilePic" src="Media/user.png">
								</div>
							</div>
						</div>	
						</li>
		
						   		 <a href="Home.jsp"><button type="button" class="btn-lg btn-primary btn-block " >Home</button></a>
						   		 <a href="#"><button type="button" class="btn-lg btn-primary btn-block" >Admin</button></a>
						   		 <a href="StaffHome.jsp"><button type="button" class="btn-lg btn-primary btn-block" >Staff</button></a>
						   		 <a href="#"><button type="button" class="btn-lg btn-primary btn-block" >Student</button></a>
   								 <a href="#"><button type="button" class="btn-lg btn-primary btn-block" >Feedback</button></a>
   								 
						   		
							
									
						</ul>
					</div>
					</div>
			
			<div class="col-sm-9 col-sm-offset-3 main">

<div id="navbar" class="navbar-collapse collapse">
<ul class="nav navbar-nav navbar-left">
<li><a href="ViewData.jsp"><img class="Back" src="media/Back.png">Back</a></li>
</ul>
</div>
<link rel="stylesheet" href="css/Register.css" >
		
</head>
<body>
<h1>Please Update Your Feedback Here</h1>
<div class="col-md-6 col-md-offset-3 form-container">
<form method="post" action="FeedbackUpdate_Process.jsp">
id:<br>
<input type="number" name="id" value="<%=resultSet.getString("id") %>" required>
<br>
email:<br>
<input type="text" name="email" value="<%=resultSet.getString("email") %>" required>
<br>
Name:<br>
<input type="text" name="Name" value="<%=resultSet.getString("Name") %>">
<br>
comments:<br>
<textarea name="comments" rows="7" cols="60" maxlength="6000" required><%=resultSet.getString("comments")%></textarea>
<br><br>
<input type="submit" value="submit">
</form>
<br>
<form method="post" action="FeedbackViewData.jsp">
    <button type="submit">View</button>
</form>
<br>
</div>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

	
	</body>
    </html>