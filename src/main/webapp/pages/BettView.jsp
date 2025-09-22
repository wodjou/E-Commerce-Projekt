<%@ page import="models.Product" %>

<%@ page import="models.Warenkorb" %>
<%@ page import="dao.ProductDao" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
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
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/bett.css" />
  
  <style type="text/css">
	  #first {
	  display: flex;
	  gap: 15px; /* optionaler Abstand zwischen den Divs */
	}
	
	#first > div {
	  flex: 1;           /* beide Divs gleich breit */
	  max-width: 50%;    /* verhindern, dass eins zu groß wird */
	}
	
	 #second {
	  display: flex;
	  gap: 15px; /* optionaler Abstand zwischen den Divs */
	}
	
	#second > div {
	  flex: 1;           /* beide Divs gleich breit */
	  max-width: 50%;    /* verhindern, dass eins zu groß wird */
	}
	 #third {
	  display: flex;
	  gap: 15px; /* optionaler Abstand zwischen den Divs */
	}
	
	#third > div {
	  flex: 1;           /* beide Divs gleich breit */
	  max-width: 50%;    /* verhindern, dass eins zu groß wird */
	}
  </style>
</head>
<body>
<jsp:useBean id="warenkorb" class="models.Warenkorb" scope="session"/>
<jsp:useBean id="user" class="models.User" scope="session"/>
 <%@include file="/components/header.jsp" %>
<h1>Unsere Betten</h1>
<% 
if(!warenkorb.getWarenkorbProdukt().isEmpty()){
	out.println("<h1>"+ warenkorb.getInfoMessage()+"</h1>");
}
 
 
 %>
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

<div id="first" style="margin-left: 200px">
	 <div>
	 <form action="./WarenkorbAppl.jsp" method="post">
			    <img src= <%= pathBett1 %> title="Produktdetails:
			- Farbe: Tintenschwarz 
			- Material: Metall
			- Größe: 208 x 91,8 x 86,4 cm (L x B x H)
			- Geeignete Matratze: 90 x 200 cm (Matratze nicht dabei)
			- Bodenfreiheit: 40 cm
			- Gewicht: 14 kg
			- Maximale Belastbarkeit: 230 kg"/><br>
				<input type="hidden" name="bett1" value=<%= allBett.get(0).getName() %>>
				<label style="color: yellow">Preis: </label> <span style="color: yellow">1000 €</span><br>
				<label style="color: yellow">Menge: </label> <input type="number" name="menge1" value="" placeholder="Menge eingeben"> 
				
	            <div>⭐⭐⭐⭐⭐</div>
				<button class="button" type="submit">kaufen</button>
	</form>
	</div>
	
	<div>
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
	- 4 x Schublade "/> <br>
		<input type="hidden" name="bett2" value=<%= allBett.get(1).getName() %>>
		<label style="color: yellow">Preis: </label> <span style="color: yellow">1000 €</span><br>
		<label style="color: yellow">Menge: </label> <input type="number" name="menge2" value="" placeholder="Menge eingeben"> 
		<div>⭐⭐⭐⭐⭐</div>
		<button class="button" type="submit">kaufen</button>
	</form>
	</div>
</div><br>	

<div id="second" style="margin-left: 200px">
	<div>
	<form action="./WarenkorbAppl.jsp" method="post">
	   <img src=<%= pathBett3 %> title="Produktdetails:
	- Farbe: Hellrosa
	- Material: Metall
	- Größe: 197 × 96 × 88,5 cm (L x B x H)
	- Geeignete Matratze: 190 cm L × 90 cm B (Matratze nicht dabei)
	- Bodenfreiheit: 32 cm
	- Gewicht: 12 kg
	- Max. Belastbarkeit: 180 kg"/> <br>
		<input type="hidden" name="bett3" value=<%= allBett.get(2).getName() %>>
		<label style="color: yellow">Preis: </label> <span style="color: yellow">1000 €</span><br>
		<label style="color: yellow">Menge: </label> <input type="number" name="menge3" value="" placeholder="Menge eingeben"> 
		<div>⭐⭐⭐⭐⭐</div>
		<button class="button" type="submit">kaufen</button>
	</form>
	</div>
	
	<div>
	<form action="./WarenkorbAppl.jsp" method="post">
	   <img src=<%= pathBett4 %> title="Produktsdetails:
	- Farbe: Beige
	- Material: Baumwolle+Holz+Metall
	- Größe: 222x91x109cm (L x B x H)
	- Geeignete Matratze: 90x200cm
	- Beleuchtung: LEDs, 0,8 W, 12 V, 0,08 A, Hellblau
	- Gewicht: 37kg
	- Max.Belastbarkeit: 150kg"/> <br>
		<input type="hidden" name="bett4" value=<%= allBett.get(3).getName() %>>
		<label style="color: yellow">Preis: </label> <span style="color: yellow">1000 €</span><br>
		<label style="color: yellow">Menge: </label> <input type="number" name="menge4" value="" placeholder="Menge eingeben"> 
		<div>⭐⭐⭐⭐⭐</div>
		<button class="button" type="submit">kaufen</button>
	</form>
	</div>
</div> <br>

<div id="third" style="margin-left: 200px">
	<div>
	<form action="./WarenkorbAppl.jsp" method="post">
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
	- Nettogewicht: 20kg"/> <br>
		<input type="hidden" name="bett5" value=<%= allBett.get(4).getName() %>>
		<label style="color: yellow">Preis: </label> <span style="color: yellow">1000 €</span><br>
		<label style="color: yellow">Menge: </label> <input type="number" name="menge5" value="" placeholder="Menge eingeben"> 
		<div>⭐⭐⭐⭐⭐</div>
		<button class="button" type="submit">kaufen</button>
	</form>
	</div>
	
	<div>
	<form action="./WarenkorbAppl.jsp" method="post">
	    <img src=<%= pathBett6 %> title="Produktdetails:
	- Farbe: Schwarz
	- Material: Holz (90% Sperrholz + 10% MDF), Samtstoff (50% Samt + 35% Vliesstoff + 15% Mesh-Gewebe)
	- Größe: 197 × 96 × 108 cm (L x B x H)
	- Geeignete Matratze: 200 cm L × 140 cm B 
	- Härtegrad: H4
	- Beleuchtung: LEDs, 0,8 W, 12 V, 0,08 A, Blau
	- Gewicht: 12 kg
	- Max. Belastbarkeit: 200 kg"> <br>
		<input type="hidden" name="bett6" value=<%= allBett.get(5).getName() %>>
		<label style="color: yellow">Preis: </label> <span style="color: yellow">1000 €</span><br>
		<label style="color: yellow">Menge: </label> <input type="number" name="menge6" value="" placeholder="Menge eingeben"> 
		<div>⭐⭐⭐⭐⭐</div>
		<button class="button" type="submit">kaufen</button>
	</form>
	</div>
</div>

 
<%@ include file="/components/footer.jsp" %>  
</body>

</html>