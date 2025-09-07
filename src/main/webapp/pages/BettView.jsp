<%@ page import="models.Product" %>
<%@ page import="models.Warenkorb" %>
<%@ page import="dao.ProductDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BettView</title>
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/base.css">
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/utilities.css">
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/login.css">
  <link rel="stylesheet" type="text/css" href="../css/bett.css" />
</head>
<body>
<jsp:useBean id="warenkorb" class="models.Warenkorb" scope="session"/>
 <%@include file="/components/header.jsp" %>
<h1>Unsere Betten</h1>
 
<% ProductDao productDAO = new ProductDao(); %>
<%List<Product> allBett = new ArrayList<Product>();
	allBett = productDAO.getAllProducts(); 
	String pathBett1 = "../images/"+allBett.get(0).getName()+".png"; 
	String pathBett2 = "../images/"+allBett.get(1).getName()+".png";
	String pathBett3 = "../images/"+allBett.get(2).getName()+".jpeg";
	String pathBett4 = "../images/"+allBett.get(3).getName()+".jpeg";
	String pathBett5 = "../images/"+allBett.get(4).getName()+".jpeg";
	String pathBett6 = "../images/"+allBett.get(5).getName()+".jpeg";
	%>


 
 <form action="./WarenkorbAppl.jsp" method="post">
		    <img src= <%= pathBett1 %> title="Produktdetails:
		- Farbe: Tintenschwarz 
		- Material: Metall
		- Größe: 208 x 91,8 x 86,4 cm (L x B x H)
		- Geeignete Matratze: 90 x 200 cm (Matratze nicht dabei)
		- Bodenfreiheit: 40 cm
		- Gewicht: 14 kg
		- Maximale Belastbarkeit: 230 kg"/>
			<input type="hidden" name="bett1" value=<%= allBett.get(0).getName() %>>>
			<button class="button" type="submit">kaufen</button>
</form>

	
<form action="./WarenkorbAppl.jsp" method="post">
   <img src=<%= pathBett2 %> title="Produktdetails:
- Farbe: Grau
- Material: Schlaumstoff
- Größe: 197 × 96 × 108 cm (L x B x H)
- Geeignete Matratze: 200 cm L × 140 cm B (Matratze nicht dabei)
- Härtegrad: H4
- Beleuchtung: LEDs, 0,8 W, 12 V, 0,08 A, Blau
- Gewicht: 38 kg
- Max. Belastbarkeit: 455 kg
- 4 x Schublade "/> 
	<input type="hidden" name="bett2" value=<%= allBett.get(1).getName() %>>
	<button class="button" type="submit">kaufen</button>
</form>

   
  <img src=<%= pathBett3 %> title="Produktdetails:
- Farbe: Hellrosa
- Material: Metall
- Größe: 197 × 96 × 88,5 cm (L x B x H)
- Geeignete Matratze: 190 cm L × 90 cm B (Matratze nicht dabei)
- Bodenfreiheit: 32 cm
- Gewicht: 12 kg
- Max. Belastbarkeit: 180 kg"  />
 <img src=<%= pathBett4 %> title="Produktsdetails:
- Farbe: Beige
- Material: Baumwolle+Holz+Metall
- Größe: 222x91x109cm (L x B x H)
- Geeignete Matratze: 90x200cm
- Beleuchtung: LEDs, 0,8 W, 12 V, 0,08 A, Hellblau
- Gewicht: 37kg
- Max.Belastbarkeit: 150kg"/>
   <img src=<%= pathBett5 %> title="Produktsdetails:
 - Farbe: Beige
- Produktgröße: 205x96x104cm (L x B x H)
- Kopfteil Höhe: 104cm
- Fußteil Höhe: 28cm
- Bodenfreiheit: 13cm
- Bettbezug: Samt
- Material: Massivholz + MDF + Metall
- Geeignete Matratze: 90x200cm (Matratze nicht dabei)
- Max. Belastbarkeit: 120kg
- Nettogewicht: 20kg"/>
    <img src=<%= pathBett6 %> title="Produktdetails:
- Farbe: Schwarz
- Material: Holz (90% Sperrholz + 10% MDF), Samtstoff (50% Samt + 35% Vliesstoff + 15% Mesh-Gewebe)
- Größe: 197 × 96 × 108 cm (L x B x H)
- Geeignete Matratze: 200 cm L × 140 cm B 
- Härtegrad: H4
- Beleuchtung: LEDs, 0,8 W, 12 V, 0,08 A, Blau
- Gewicht: 12 kg
- Max. Belastbarkeit: 200 kg">

 
<%@ include file="/components/footer.jsp" %>  
</body>

</html>