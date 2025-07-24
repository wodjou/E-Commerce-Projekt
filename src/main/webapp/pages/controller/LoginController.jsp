<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

<%
	String nachname = request.getParameter("nachname");
	String password = request.getParameter("password");
	System.out.println("Login Nachname..."+nachname);
	System.out.println("Login password..."+password);
	
	response.sendRedirect("../HomePage.jsp");
	

%>
</body>
</html>