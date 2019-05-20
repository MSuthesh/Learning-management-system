<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
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
						   		 <a href="Users.jsp"><button type="button" class="btn-lg btn-primary btn-block" >User Management</button></a>
						   		 <a href="CourseView.jsp"><button type="button" class="btn-lg btn-primary btn-block" >Course Management</button></a>
   								 <a href="FeedbackViewData.jsp"><button type="button" class="btn-lg btn-primary btn-block" >View Feedbacks</button></a>
   								 
						   		
							
									
						</ul>
					</div>
					</div>
			
			<div class="col-sm-9 col-sm-offset-3 main">

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Css/ViewData.css" >
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<body>
<div id="navbar" class="navbar-collapse collapse">
<ul class="nav navbar-nav navbar-left">
<li><a href="AddMarks.jsp"><img class="Back" src="media/Back.png">Back</a></li>
<li><a href="MarksReport.jsp">Marks Report</a></li>
</ul>
</div>
        
			        
<div class="table-container">
<h1></h1>
<table class = "table table-striped table-hover">
<tr>
<th>Id</th>
<th>Name</th>
<th>Marks</th>
</tr>
<%

try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cms","root",""); 
Statement st=con.createStatement();
String strQuery = "SELECT COUNT(*) FROM marks";
ResultSet rs = st.executeQuery(strQuery);
String Countrow="";
while(rs.next()){
Countrow = rs.getString(1);
out.println("<h4>Total Number Of Student marks:<h4>"+Countrow);
}
}
catch (Exception e){
e.printStackTrace();
}
//Count number of feedbacks
%>
<%

try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from marks";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("marks") %></td>
<td><a href="DeleteMarks.jsp?id=<%=resultSet.getString("id") %>"><button type="button" class="buttoncss" >Delete</button></a></td>
<td><a href="UpdateMarks.jsp?id=<%=resultSet.getString("id")%>"><button type="button"  class="buttoncss" >Update</button></a>
</tr>
<%
i++; 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
//Feedback results table
%>
</table>
</div>
</body>
</html>
</div>
	</body>
    </html>