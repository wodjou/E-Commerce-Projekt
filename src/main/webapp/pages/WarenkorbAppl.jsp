<%@page import="models.Product"%>
<%@page import="models.Warenkorb"%>

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
String bett1 = request.getParameter("bett1");
String bett2 = request.getParameter("bett2");

if(bett1 != null){
	warenkorb.addProdukt(new Product(bett1));
}
if(bett2 != null){
	warenkorb.addProdukt(new Product(bett2));
}
int i=0;
for(Product product: warenkorb.getWarenkorbProdukt()){
	System.out.println("product "+i+" "+product.getName());
	++i;
}
response.sendRedirect("BettView.jsp");

%>
	

</body>
</html>