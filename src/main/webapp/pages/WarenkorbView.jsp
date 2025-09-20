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
		<% for(Product prod: warenkorb.getWarenkorbProdukt().keySet()){ %>
		<form action="./WarenkorbAppl.jsp" method="post">
		
				<%=prod.getName() %>
				<%=warenkorb.getWarenkorbProdukt().get(prod)  %>
				 <button class="button" type="submit" name="deleteProduktInWarenkorb" value="delete">delete</button>
				 <input type="hidden" name="tobedeleted" value=<%= prod.getName() %>> 
				<button type="submit" class="Button" name="bestellen" value="bestellen">Bestellen</button>
		</form>
			<%} %>


</body>
</html>