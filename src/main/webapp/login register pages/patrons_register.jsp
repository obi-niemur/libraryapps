<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="registrationStyle.css">

<title>Patron's Register Here</title>
</head>
<body>

<h1 class="Registration-title">Registration Form for Patron's</h1>

	<form action="patrons_process.jsp" method="post">
		<div class="container">

			<p>Please fill in this form to create an account.</p>
			<hr>

			<label for="email"><b>User name</b></label> 
			<input type="text" placeholder="Enter User Name" name="user_name" required>
			
			<label for="First Name"><b>First Name</b></label> 
			<input type="text" placeholder="Enter First Name" name="first_name" required>
			
			<label for="Last Name"><b>Last Name</b></label> 
			<input type="text" placeholder="Enter First Name" name="last_name" required>

			<label for="psw"><b>Password</b></label> 
			<input type="password" placeholder="Enter Password" name="password"  required> 
			
			<label for="psw-repeat"><b>Repeat Password</b></label> 
			<input type="password" placeholder="Repeat Password" name="confirm_password" required>
			<hr>

			<button type="submit" class="registerbtn">Register</button>
		</div>

		<div class="container signin">
			<p>
				Already have an account? <a href="../login pages/patrons_login.jsp">Sign in</a>.
			</p>
		</div>
	</form>

</body>
</html>