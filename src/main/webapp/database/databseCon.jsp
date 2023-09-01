<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*, java.util.*" %>
    
<!--     Database connection URL, user name and password coming from this url
For security purpose, I'm not going to push this file to Github -->

    <%@ include file="./sqlString.jsp"%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

 	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	Connection conn = DriverManager.getConnection(Url); //The Url parameter is referencing to the import file.
	Statement st=conn.createStatement();
	
	
	

%>

</body>
</html>