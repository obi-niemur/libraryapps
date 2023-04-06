<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Public Library Application</title>
<link rel="stylesheet" type="text/css" href="style.css">

</head>
<body>

	<h1 class="main-title-head">Public Library Application</h1>

	<div class="buttons">
		<form class="formStyle" action=" ./login pages/librarian_login.jsp" method="post">

			<button class="button_style" type="submit"
				value="submit_librarian">Librarian Login</button>

		</form>

		<form class="formStyle" action="./login pages/patrons_login.jsp" method="post">

			<button class="button_style" type="submit"
				value="submit_patrons">Patrons Login</button>


		</form>
	</div>





</body>
</html>