<%@ page import="dao.DbConnection" %>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/base.css">
</head>
<body>

<span id ="registrationMessage"></span>

<%
	String surname = request.getParameter("surname");
	String firstname = request.getParameter("firstname");
	String email = request.getParameter("email");
	String password = request.getParameter("pwd");
		
	Connection conn = new DbConnection().etablishConnection();
	String query = "INSERT INTO users (name, vorname, email, passwort ) VALUES (?, ?, ?, ?)";
	PreparedStatement preparedStatement = conn.prepareStatement(query);
	preparedStatement.setString(1, surname);
	preparedStatement.setString(2, firstname);
	preparedStatement.setString(3, email);
	preparedStatement.setString(4, password);
	
	preparedStatement.executeUpdate();
	
	System.out.println("surname.."+surname);
	System.out.println("firstname.."+firstname);
	System.out.println("password.."+password);
	System.out.println("email.."+email);
%>

<%
	if(response.getStatus() == 200){ %>
		<p style='color: green;'>✅ Success: Thanks for Registration!</p>
		<button class="button" type="button" onclick="window.location.href='../login.jsp'">Zum Login</button>
	<%} %>

<%


%>
</body>

</html>