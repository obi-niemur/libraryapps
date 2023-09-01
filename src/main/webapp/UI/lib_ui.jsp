<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*, java.util.*"%>
<%@ include file="../database/databseCon.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Books</title>
<link rel="stylesheet" type="text/css" href="UI_Style.css">
</head>
<body>

	<%
	String username = (String) session.getAttribute("username");

	if (username == null) {
		response.sendRedirect("../login pages/librarian_login.jsp"); // Redirect to login page if not logged in
	}
	%>

	<div class="form-head">

		<h1>Enter Your Books</h1>

		<form action="addBook.jsp" method="post">
			<input type="text" name="bookName" placeholder="Enter Book Title"
				required /> <input type="text" name="authorName"
				placeholder="Enter Author Name" required /> <input type="text"
				name="publisher" placeholder="Publisher" required />
			<button type="submit" onClick=alertName()>Submit</button>
		</form>
	</div>


	<h1 style="text-align: center;">All uploaded Books</h1>
	<table border="1">

		<tr>
			<td>Book ID</td>
			<td>Book Name</td>
			<td>Author Name</td>
			<td>Publisher Name</td>
			<td>Action</td>
		</tr>

		<%
		try {
			String sql = "select*from books";
			ResultSet resultSet = st.executeQuery(sql);
			while (resultSet.next()) {
		%>

		<tr>
			<td><%=resultSet.getString("bookId")%></td>
			<td><%=resultSet.getString("bookTitle")%></td>
			<td><%=resultSet.getString("authorName")%></td>
			<td><%=resultSet.getString("publisher")%></td>
			<td style="text-align: right;"><a
				href="delete.jsp?bookId=<%=resultSet.getString("bookId")%>"><button>Delete</button></a></td>

		</tr>


		<%
		}
		conn.close();

		} catch (Exception e) {
		e.printStackTrace();
		}
		%>


	</table>


	<script type="text/javascript">
function alertName(){
window.alert("The Book has been added");
} 
</script>

</body>
</html>