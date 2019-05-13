<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
					
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="database.dbconnector"%>

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
					<li class="active"><a href="StaffLogout.jsp">Logout</a></li>
				</ul>
			<form class="navbar-form navbar-right"method="post" action="Search.jsp">
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
			</div>
					
						
					
							
								
			<div class="col-sm-9 col-sm-offset-2 main">
								
				<h3 class="page-header">Here is the your uploaded files</h3>
 <a href="StaffLogged.jsp"><img class="Back" src="Media/Back.png"></a> 
			
			<table class = "table table-striped table-hover">        
			        
            <thead> 
               <th colspan="3">Uploaded Files</th>        
            </thead>
                <tbody>
                    <tr>
                        <td><b>Id</b><td><b>Title</b></td><td><b>File</b></td><td><b>Delete</b></td>
                    </tr>
                    
                    <%
                        try
                        {
                        	
                        	dbconnector dbcon=new dbconnector();
                        	Connection myconnection= dbconnector.getDatabase();

                                String sqlString = "SELECT * FROM files";
                                Statement myStatement = myconnection.createStatement();
                                ResultSet rs=myStatement.executeQuery(sqlString);
                                
                                if(!rs.isBeforeFirst())
                                {
                                    %>
                                        <tr>
                                        <td colspan="3"><center><%out.print("No Files"); %></center></td>
                                        </tr>
                                    <%
                                }    
                                
                                while(rs.next())
                                {   
                            %>
                                    <tr>
                                        <td><%out.print(rs.getString("id")); %></td>
                                        <td><%out.print(rs.getString("title")); %></td>
                                        <td><a href=ViewDocuments.jsp?id=<%=rs.getString("id") %>>View</a></td>
                                    	<td><a href="DeleteFile.jsp?id=<%=rs.getString("id") %>">delete</a></td>
                              
                                    </tr>
                            <%
                                }
                            %>
                            
                </tbody> 
        </table>
                            
                            <%
                                rs.close();
                                myStatement.close();
                                myconnection.close();
                        }catch(Exception e){e.printStackTrace();}    
                        
                    %>
			
				
				
				
			</div>
						
</body>
</html>				
				
