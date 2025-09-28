<%@ page import="java.sql.Connection" %>
<%@ page import="dao.DbConnection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import= "java.util.HashMap" %>
<%@ page import= "java.util.Map" %>
<%@ page import= "java.util.ArrayList" %>
<%@ page import= "models.BestProduct" %>
<%@ page import= "java.util.*" %>
<%@ page import="java.util.Map.Entry" %>

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
String query = "select productname, sum(gesamtpreis) as umsatz from orders group by productname order by umsatz desc;";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
List<BestProduct> bestProduct = new ArrayList<>();

while(rs.next()) {
	String productname = rs.getString("productname");
	double umsatz = rs.getDouble("umsatz");
	
	bestProduct.add(new BestProduct(productname, umsatz));
	
}
bestProduct.sort(Comparator.comparingDouble((BestProduct b) -> b.getUmsatz()).reversed());
%>

<div class="table">
       <div class="cell">Productname</div>
       <div class="cell">Umsatz</div>
		<% for(BestProduct bp: bestProduct){ %>
			<div class="row">
				<div class="cell">
				<%= bp.getProductname() %></div>
				<div class="cell"><%= bp.getUmsatz()  %> </div>
			</div>
			<%} %>
	</div>
</body>
</html>