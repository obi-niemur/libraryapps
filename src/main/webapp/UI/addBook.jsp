<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.sql.*, java.util.*"%>
<%@ include file="../database/databseCon.jsp"%>

<%
	String bookName = request.getParameter("bookName");
	String authorName = request.getParameter("authorName");
	String publisher = request.getParameter("publisher");

	try {
		int  i = st.executeUpdate("Insert into books(bookTitle, authorName, publisher)values('" + bookName + "', '" + authorName
		+ "', '" + publisher + "')");
		response.sendRedirect("lib_ui.jsp");


	} catch (Exception e) {
		e.printStackTrace();
	}
	%>