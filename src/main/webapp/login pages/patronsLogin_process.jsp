<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*, java.util.*" %>
<%@ include file="../database/databseCon.jsp" %>

<%
String username = request.getParameter("uname");
String password = request.getParameter("psw");
ResultSet rs = st.executeQuery("select * from patrons where userName='" + username + "' and password='" + password + "'"); 

try {
    if (rs.next()) {
        if (rs.getString("password").equals(password) && rs.getString("userName").equals(username)) {
            // Authentication successful
            session.setAttribute("username", username);
            response.sendRedirect("../Patrons_UI/reserveBook.jsp");
        } else {
            // Invalid password or username
            out.println("Invalid password or username.");
        }
    } else {
        // No matching user found
        out.println("Invalid password or username.");
    }
} catch (Exception e) {
    System.out.print(e);
    e.printStackTrace();
} finally {
    // Close the ResultSet and Statement
    try { rs.close(); } catch (Exception e) {System.out.print(e);}
    try { st.close(); } catch (Exception e) {System.out.print(e);}
}
%>
