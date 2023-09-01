<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*, java.util.*"%>
<%@ include file="../database/databseCon.jsp"%>
<%
String bookId = request.getParameter("bookId");

try {

	st.executeUpdate("DELETE FROM bookTrack WHERE bookId=" + bookId);
	response.sendRedirect("reserveBook.jsp");
	
} catch (Exception e) {
	System.out.print(e);
	e.printStackTrace();
}%>
	
	




