<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*, java.util.*"%>
<%@ include file="../database/databseCon.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reserve Your Books</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

	<table>
	
	


		<%
		
		String username = (String) session.getAttribute("username");

		if (username == null) {
		    response.sendRedirect("../login pages/patrons_login.jsp"); // Redirect to login page if not logged in
		}
		
		try {
			String sql = "SELECT * FROM books";
			ResultSet resultSet = st.executeQuery(sql);

			if (resultSet.next()) {
				do {
		%>
		<tr class="object">
			<td><img src="../images/Default.png"><br> <span
				class="bookTtitle">Title: <%=resultSet.getString("bookTitle")%><br></span>
				<span>Author Name: <%=resultSet.getString("authorName")%><br></span>
				<span>Publisher: <%=resultSet.getString("publisher")%><br></span>
			</td>

			<td>
				<button class="button" onClick=alertName()>
					<a href="update.jsp?bookId=<%=resultSet.getString("bookId")%>">Reserve</a>
				</button>
			</td>

			<td>
				<button class="button2" onClick=deleteName()>
					<a href="deleteR.jsp?bookId=<%=resultSet.getString("bookId")%>">Remove</a>
				</button>
			</td>
		</tr>
		<%
		} while (resultSet.next());
		} else {
		%>
		<tr>
			<td colspan="2">
				<h1>The book table in Database empty</h1>
			</td>
		</tr>
		<%
		}

		resultSet.close();
		st.close();
		conn.close();

		} catch (Exception e) {
		e.printStackTrace();
		}
		%>



	</table>


	<script type="text/javascript">
function alertName(){
window.alert("The Book has been reserved");
} 

function deleteName(){
	window.alert("The Book has been removed from your reserve list");
	} 
</script>

</body>
</html>