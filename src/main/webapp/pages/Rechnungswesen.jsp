<%@ page import="java.sql.Connection" %>
<%@ page import="dao.DbConnection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="models.Payment" %>
<%@ page import="java.time.LocalDate" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.table {
  display: table;
  border-collapse: collapse;
  width: 100%;
}

.row {
  display: table-row;
}

.cell {
  display: table-cell;
  border: 1px solid #333;
  padding: 8px;
}

</style>
</head>
<body>

<%
Connection conn = new DbConnection().etablishConnection();
String query = "SELECT* FROM payments WHERE zahlungsdatum = CURRENT_DATE";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
List<Payment> payments = new ArrayList();

while(rs.next()) {
	String username = rs.getString("username");
	int gesamtpreis = rs.getInt("gesamtpreis");
	LocalDate zahlungsdatum = rs.getObject("zahlungsdatum", LocalDate.class);
	
	payments.add(new Payment(username, gesamtpreis, zahlungsdatum));
}
%>

<div class="table">
     <div class="cell">Benutzername</div>
      <div class="cell">Preis</div>
       <div class="cell">Zahlungsdatum</div>
		<% for(Payment p: payments){ %>
			<div class="row">
				<div class="cell">
				<%= p.getUserName() %></div>
				<div class="cell"><%= p.getGesamtPreis()  %> </div>
				<div class="cell"><%= p.getDate()  %> </div>
			</div>
			<%} %>
	</div>
</body>
</html>