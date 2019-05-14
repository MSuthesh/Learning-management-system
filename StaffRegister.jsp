<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
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
					<li class="active"><a href="StaffLogin.jsp">Login</a></li>
				</ul>
				<form class="navbar-form navbar-right">
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
				<h3 class="page-header">Dashboard</h3>
<html>
<head>
<link rel="stylesheet" href="css/Register.css">
</head>
<body>

<h2>User Registration Form</h2>


<div class="container">
  <form action="StaffRegisterProcess.jsp">
  <div class="row">
    <div class="col-25">
    <label for="uname">User Name</label>
    </div>
    <div class="col-75">
      <input type="text" name="userName" placeholder="Your Username.." required>
    </div>
  </div>
    <div class="row">
    <div class="col-25">
    <label for="uname">First Name</label>
    </div>
    <div class="col-75">
      <input type="text" name="firstName" placeholder="Your Firstname.." required>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="lname">Last Name</label>
    </div>
    <div class="col-75">
      <input type="text" name="lastName" placeholder="Your Lastname.." required>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="subject">Designation</label>
    </div>
    <div class="col-75">
      <input type="text" name="designation" placeholder="Your Designation" required>
    </div>
  </div>
   <div class="row">
    <div class="col-25">
      <label for="subject">Email</label>
    </div>
    <div class="col-75">
 	  <input type="email" name="email" placeholder="Your Email Address" required>
    </div>
  </div>
   <div class="row">
    <div class="col-25">
      <label for="subject">Password</label>
    </div>
    <div class="col-75">
       <input type=password name="password" placeholder="Enter Your Password Here" required >
    </div>
  </div>
  <div class="row">
    <input type="submit" value="Register">
  </div>
  </form>
</div>
</body>
</html>
			
			</div>
						
</body>
</html>		