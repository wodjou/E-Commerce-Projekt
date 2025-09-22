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
<jsp:useBean id="user" class="models.User" scope="session"/>


<% 
String bett1 = request.getParameter("bett1");
String bett2 = request.getParameter("bett2");
String bett3 = request.getParameter("bett3");
String bett4 = request.getParameter("bett4");
String bett5 = request.getParameter("bett5");
String bett6 = request.getParameter("bett6");
String deletedProduktInWarenkorb = request.getParameter("deleteProduktInWarenkorb");

if(bett1 != null){
	String menge = request.getParameter("menge1");
	warenkorb.addProdukt(new Product(bett1), Integer.valueOf(menge));
}
if(bett2 != null){
	String menge = request.getParameter("menge2");
	warenkorb.addProdukt(new Product(bett2), Integer.valueOf(menge));
}
if(bett3 != null){
	String menge = request.getParameter("menge3");
	warenkorb.addProdukt(new Product(bett3), Integer.valueOf(menge));
}
if(bett4 != null){
	String menge = request.getParameter("menge4");
	warenkorb.addProdukt(new Product(bett4), Integer.valueOf(menge));
}
if(bett5 != null){
	String menge = request.getParameter("menge5");
	warenkorb.addProdukt(new Product(bett5), Integer.valueOf(menge));
}
if(bett6 != null){
	String menge = request.getParameter("menge6");
	warenkorb.addProdukt(new Product(bett6), Integer.valueOf(menge));
}
if(deletedProduktInWarenkorb != null){
	String toBeDeleted = request.getParameter("tobedeleted");
	boolean removed = warenkorb.removeProduct(new Product(toBeDeleted));
	System.out.println("remove true or false "+removed);
	response.sendRedirect("WarenkorbView.jsp");
}
if(request.getParameter("bestellen") != null){
	String toBeDeleted = request.getParameter("tobedeleted");
	warenkorb.setUsername(user.getName());
	warenkorb.productBestellen(new Product(toBeDeleted));
	response.sendRedirect("WarenkorbView.jsp");
}
int i=0;
for(Product product: warenkorb.getWarenkorbProdukt().keySet()){
	System.out.println("product "+i+" "+product.getName());
	++i;
}
if(deletedProduktInWarenkorb == null && request.getParameter("bestellen") == null){
	response.sendRedirect("BettView.jsp");
}

%>
	

</body>
</html>