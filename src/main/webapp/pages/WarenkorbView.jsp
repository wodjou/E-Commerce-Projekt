<%@ page import="models.Product" %>
<%@ page import="models.Warenkorb" %>
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

<table>
	<% for(Product prod: warenkorb.getWarenkorbProdukt()){ %>
	<tr>
		<td><%=prod.getName() %></td>
		<td> <input id="delete" type="button" name="delete" value="delete" ></td>
		<td> <input id="bestellen" type="button" name="bestellen" value="bestellen" ></td>
	</tr>
	<%} %>
</table>

</body>
</html>