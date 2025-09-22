<%@ page import="java.sql.Connection" %>
<%@ page import="dao.DbConnection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="models.Payment" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
Connection conn = new DbConnection().etablishConnection();
String query = "SELECT* FROM payments";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
List<Payment> payments = new ArrayList();

while(rs.next()) {
	String username = rs.getString("username");
	int gesamtpreis = rs.getInt("gesamtpreis");
	
	payments.add(new Payment(username, gesamtpreis));
}
%>
<% for(Payment p: payments){ %>
<%= p.getUserName() %>
<%= p.getGesamtPreis() %> <br>
<%} %>
</body>
</html>