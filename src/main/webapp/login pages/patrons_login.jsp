<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="loginStyle.css">

<title>Patrons Log in</title>
</head>
<body>

<h1>Patrons's Login here</h1>


<form  action="patronsLogin_process.jsp" method="post">
   
    <div class="container">
      <label for="uname"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
        
      <button type="submit">Login</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">

      
    </div>
  </form>



<h3>If you do not have account, please <a href="../login register pages/patrons_register.jsp">Register Here</a></h3>

</body>
</html>