<%@ page import="models.Product" %>
<%@ page import="models.Warenkorb" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
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
<jsp:useBean id="warenkorb" class="models.Warenkorb" scope="session"/>

<%
	if(warenkorb.getWarenkorbProdukt().isEmpty()){
		out.println("<h1>"+"Warenkorb ist leer"+"</h1>");
	}
	else{
		out.println("<h1>"+ warenkorb.getRemovedMessage()+"</h1>");
	}

 %>
 <% out.println("<h1>"+ warenkorb.getBestellungsMessage()+"</h1>"); %>
 <div class="table">
		<% for(Product prod: warenkorb.getWarenkorbProdukt().keySet()){ %>
		<form action="./WarenkorbAppl.jsp" method="post">
			<div class="row">
				<div class="cell"><img src= <%= "../images/"+ prod.getName()+ ".png"  %> style="width:30px; height: 30px" />
				<%=prod.getName() %></div>
				<div class="cell"><%=warenkorb.getWarenkorbProdukt().get(prod)  %> </div>
				
				 <div class="cell"><button class="button" type="submit" name="deleteProduktInWarenkorb" value="delete">delete</button></div>
				 <input type="hidden" name="tobedeleted" value=<%= prod.getName() %>> 
				<div class="cell"><button type="submit" class="Button" name="bestellen" value="bestellen">Bestellen</button></div>
			
		</div>
		</form>
			<%} %>
	</div>


</body>
</html>