<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*, java.util.*"%>
<%@ include file="../database/databseCon.jsp"%>
<%
String bookId = request.getParameter("bookId");

try {

	st.executeUpdate("DELETE FROM books WHERE bookId=" + bookId);
	response.sendRedirect("lib_ui.jsp");
} catch (Exception e) {
	System.out.print(e);
	e.printStackTrace();%>
	<h1>This books already been reserved by a student. You cannot Delete this</h1>
	<% }%>
	
	



<script type="text/javascript">
function alertName(){
alert("Form has been submitted");
} 
</script> 