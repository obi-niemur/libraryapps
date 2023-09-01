<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*, java.util.*"%>
<%@ include file="../database/databseCon.jsp"%>
<%
String id = request.getParameter("bookId");

try {

 st.executeUpdate(
		    "INSERT INTO bookTrack (id, bookId) " +
		    "VALUES ((SELECT id FROM patrons), " +
		    "(SELECT TOP 1 bookId FROM books WHERE bookId = " + id + "))");
	response.sendRedirect("reserveBook.jsp"); 
} catch (Exception e) {
	System.out.print(e);
	e.printStackTrace();
}
%>