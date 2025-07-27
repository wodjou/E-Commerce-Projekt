<%@ page import="dao.DbConnection" %>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

<span id ="registrationMessage"></span>

<%
	String surname = request.getParameter("surname");
	String firstname = request.getParameter("firstname");
	String email = request.getParameter("email");
	String password = request.getParameter("pwd");
	
	String dbUrl = "jdbc:postgresql://localhost:5435/E-Commerce";
	String dbUser = "postgres";
	String pwd = "Datenbank1.";
		
	Connection conn = new DbConnection().etablishConnection(dbUrl, dbUser, pwd);
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
		<input type='button' value='Zum Login' onclick="window.location.href='../../index.jsp'">
	<%} %>

<%


%>
</body>

</html>