<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/Login.css">
</head>
<body>

<h2>Login</h2>

<form action="StaffLoginProcess.jsp">
  <div class="imgcontainer">
    <img src="Media/user.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label for="uname"><b>User Name</b></label>
    <input type="text" placeholder="Enter Username" name="userName" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>
        
    <button type="submit">Login</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form>
</body>
</html>
			