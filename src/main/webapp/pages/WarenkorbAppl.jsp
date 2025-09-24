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

String sofa1 = request.getParameter("sofa1");
String sofa2 = request.getParameter("sofa2");
String sofa3 = request.getParameter("sofa3");
String sofa4 = request.getParameter("sofa4");
String sofa5 = request.getParameter("sofa5");
String sofa6 = request.getParameter("sofa6");

String table1 = request.getParameter("table1");
String table2 = request.getParameter("table2");
String table3 = request.getParameter("table3");
String table4 = request.getParameter("table4");
String table5 = request.getParameter("table5");
String table6 = request.getParameter("table6");
String deletedProduktInWarenkorb = request.getParameter("deleteProduktInWarenkorb");


if(table1 != null){
	String menge = request.getParameter("mengetable1");
	warenkorb.addProdukt(new Product(table1), Integer.valueOf(menge));
	response.sendRedirect("TischView.jsp");
}

if(table2 != null){
	String menge = request.getParameter("mengetable2");
	warenkorb.addProdukt(new Product(table2), Integer.valueOf(menge));
	response.sendRedirect("TischView.jsp");
}

if(table3 != null){
	String menge = request.getParameter("mengetable3");
	warenkorb.addProdukt(new Product(table3), Integer.valueOf(menge));
	response.sendRedirect("TischView.jsp");
}

if(table4 != null){
	String menge = request.getParameter("mengetable4");
	warenkorb.addProdukt(new Product(table4), Integer.valueOf(menge));
	response.sendRedirect("TischView.jsp");
}

if(table5 != null){
	String menge = request.getParameter("mengetable5");
	warenkorb.addProdukt(new Product(table5), Integer.valueOf(menge));
	response.sendRedirect("TischView.jsp");
}

if(table6 != null){
	String menge = request.getParameter("mengetable6");
	warenkorb.addProdukt(new Product(table6), Integer.valueOf(menge));
	response.sendRedirect("TischView.jsp");
}

if(sofa1 != null){
	String menge = request.getParameter("mengesofa1");
	warenkorb.addProdukt(new Product(sofa1), Integer.valueOf(menge));
	response.sendRedirect("SofaView.jsp");
}
if(sofa2 != null){
	String menge = request.getParameter("mengesofa2");
	warenkorb.addProdukt(new Product(sofa2), Integer.valueOf(menge));
	response.sendRedirect("SofaView.jsp");
}
if(sofa3 != null){
	String menge = request.getParameter("mengesofa3");
	warenkorb.addProdukt(new Product(sofa3), Integer.valueOf(menge));
	response.sendRedirect("SofaView.jsp");
}
if(sofa4 != null){
	String menge = request.getParameter("mengesofa4");
	warenkorb.addProdukt(new Product(sofa4), Integer.valueOf(menge));
	response.sendRedirect("SofaView.jsp");
}
if(sofa5 != null){
	String menge = request.getParameter("mengesofa5");
	warenkorb.addProdukt(new Product(sofa5), Integer.valueOf(menge));
	response.sendRedirect("SofaView.jsp");
}
if(sofa6 != null){
	String menge = request.getParameter("mengesofa6");
	warenkorb.addProdukt(new Product(sofa6), Integer.valueOf(menge));
	response.sendRedirect("SofaView.jsp");
}
if(bett1 != null){
	String menge = request.getParameter("menge1");
	warenkorb.addProdukt(new Product(bett1), Integer.valueOf(menge));
	response.sendRedirect("BettView.jsp");
}
if(bett2 != null){
	String menge = request.getParameter("menge2");
	warenkorb.addProdukt(new Product(bett2), Integer.valueOf(menge));
	response.sendRedirect("BettView.jsp");
}
if(bett3 != null){
	String menge = request.getParameter("menge3");
	warenkorb.addProdukt(new Product(bett3), Integer.valueOf(menge));
	response.sendRedirect("BettView.jsp");
}
if(bett4 != null){
	String menge = request.getParameter("menge4");
	warenkorb.addProdukt(new Product(bett4), Integer.valueOf(menge));
	response.sendRedirect("BettView.jsp");
}
if(bett5 != null){
	String menge = request.getParameter("menge5");
	warenkorb.addProdukt(new Product(bett5), Integer.valueOf(menge));
	response.sendRedirect("BettView.jsp");
}
if(bett6 != null){
	String menge = request.getParameter("menge6");
	warenkorb.addProdukt(new Product(bett6), Integer.valueOf(menge));
	response.sendRedirect("BettView.jsp");
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

%>
	

</body>
</html>