<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.DbConnection" %>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>

<!DOCTYPE html>
<html>
<body>

<%
	String username = request.getParameter("nachname");
	String password = request.getParameter("password");
	
	String sql = "select* from users where name = ?"+" and passwort = ?";
	System.out.println(sql);
	Connection conn =  new DbConnection().etablishConnection();
	PreparedStatement st = conn.prepareStatement(sql);
	st.setString(1, username);
	st.setString(2, password);
	ResultSet rs = st.executeQuery();
	
	if(!rs.next()){
		out.println("<p>user does not exist. username or password is wrong </p>");
	}
	else{
		response.sendRedirect("../HomePage.jsp");
	}
	
	

%>
</body>
</html>