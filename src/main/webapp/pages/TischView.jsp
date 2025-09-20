<%@ page import="dao.ProductDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="models.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tische</title>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/base.css">
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/utilities.css">
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/login.css">
  <link rel="stylesheet" type="text/css" href="../css/bett.css" />
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
<%@include file="/components/header.jsp" %>
<h1>Unsere Tische</h1>

 <div id="first" style="margin-left: 200px">         
 <div>
 <form action="./WarenkorbAppl.jsp" method="post">
		   <img src="<%= request.getContextPath() %>/images/table1.jpeg" title="Produktdetails:
		- Farbe: Hellrosa
		- Material: Metall
		- Größe: 197 × 96 × 88,5 cm (L x B x H)
		- Geeignete Matratze: 190 cm L × 90 cm B (Matratze nicht dabei)
		- Bodenfreiheit: 32 cm
		- Gewicht: 12 kg
		- Max. Belastbarkeit: 180 kg
		- Beschreibung: Ein elegantes Polsterprogramm bietet dieses 3-Sitzer Sofa von COTTA mit Rückenverstellung. 
	      Im modernen Design gehalten, fügt es sich in verschiedenste Wohnkonzepte ein.
	       Da die frei im Raum stellbare Couch in mehreren Farben erhältlich ist, kannst du sie passend zu deinem bestehenden Interieur bestellen."/> <br>
			<input type="hidden" name="table1" value="sofa1">
			<label style="color: yellow">Preis: </label> <span style="color: yellow">1000 €</span><br>
			<label style="color: yellow">Menge: </label> <input type="number" name="menge1" value="" placeholder="Menge eingeben"> 
			<div>⭐⭐⭐⭐⭐</div>
			<button class="button" type="submit">kaufen</button>
		</form>
	</div>
		
	<div>
		<form action="./WarenkorbAppl.jsp" method="post">
		   <img src="<%= request.getContextPath() %>/images/table2.jpeg" title="Produktdetails:
		- Farbe: Hellrosa
		- Material: Metall
		- Größe: 197 × 96 × 88,5 cm (L x B x H)
		- Geeignete Matratze: 190 cm L × 90 cm B (Matratze nicht dabei)
		- Bodenfreiheit: 32 cm
		- Gewicht: 12 kg
		- Max. Belastbarkeit: 180 kg
		- Beschreibung: Ein elegantes Polsterprogramm bietet dieses 3-Sitzer Sofa von COTTA mit Rückenverstellung. 
	      Im modernen Design gehalten, fügt es sich in verschiedenste Wohnkonzepte ein.
	       Da die frei im Raum stellbare Couch in mehreren Farben erhältlich ist, kannst du sie passend zu deinem bestehenden Interieur bestellen."/> <br>
			<input type="hidden" name="table1" value="table1">
			<label style="color: yellow">Preis: </label> <span style="color: yellow">1000 €</span><br>
			<label style="color: yellow">Menge: </label> <input type="number" name="menge2" value="" placeholder="Menge eingeben"> 
			<div>⭐⭐⭐⭐⭐</div>
			<button class="button" type="submit">kaufen</button>
		</form>
	</div>
	
</div>
	<div id="second" style="margin-left: 200px">
	<div>
		<form action="./WarenkorbAppl.jsp" method="post">
		   <img src="<%= request.getContextPath() %>/images/table3.jpeg" title="Produktdetails:
		- Farbe: Hellrosa
		- Material: Metall
		- Größe: 197 × 96 × 88,5 cm (L x B x H)
		- Geeignete Matratze: 190 cm L × 90 cm B (Matratze nicht dabei)
		- Bodenfreiheit: 32 cm
		- Gewicht: 12 kg
		- Max. Belastbarkeit: 180 kg
		- Beschreibung: Ein elegantes Polsterprogramm bietet dieses 3-Sitzer Sofa von COTTA mit Rückenverstellung. 
	      Im modernen Design gehalten, fügt es sich in verschiedenste Wohnkonzepte ein.
	       Da die frei im Raum stellbare Couch in mehreren Farben erhältlich ist, kannst du sie passend zu deinem bestehenden Interieur bestellen."/> <br>
			<input type="hidden" name="table3" value="sofa3">
			<label style="color: yellow">Preis: </label> <span style="color: yellow">1000 €</span><br>
			<label style="color: yellow">Menge: </label> <input type="number" name="menge3" value="" placeholder="Menge eingeben"> 
			<div>⭐⭐⭐⭐⭐</div>
			<button class="button" type="submit">kaufen</button>
		</form>
	</div>
	
	<div>
		<form action="./WarenkorbAppl.jsp" method="post">
		   <img src="<%= request.getContextPath() %>/images/table4.jpeg" title="Produktdetails:
		- Farbe: Hellrosa
		- Material: Metall
		- Größe: 197 × 96 × 88,5 cm (L x B x H)
		- Geeignete Matratze: 190 cm L × 90 cm B (Matratze nicht dabei)
		- Bodenfreiheit: 32 cm
		- Gewicht: 12 kg
		- Max. Belastbarkeit: 180 kg
		- Beschreibung: Ein elegantes Polsterprogramm bietet dieses 3-Sitzer Sofa von COTTA mit Rückenverstellung. 
	      Im modernen Design gehalten, fügt es sich in verschiedenste Wohnkonzepte ein.
	       Da die frei im Raum stellbare Couch in mehreren Farben erhältlich ist, kannst du sie passend zu deinem bestehenden Interieur bestellen."/> <br>
			<input type="hidden" name="table4" value="sofa4">
			<label style="color: yellow">Preis: </label> <span style="color: yellow">1000 €</span><br>
			<label style="color: yellow">Menge: </label> <input type="number" name="menge4" value="" placeholder="Menge eingeben"> 
			<div>⭐⭐⭐⭐⭐</div>
			<button class="button" type="submit">kaufen</button>
		</form>
	</div>
	</div>
	
	<div id="third" style="margin-left: 200px">
	<div>
		<form action="./WarenkorbAppl.jsp" method="post">
		   <img src="<%= request.getContextPath() %>/images/table5.jpeg" title="Produktdetails:
		- Farbe: Hellrosa
		- Material: Metall
		- Größe: 197 × 96 × 88,5 cm (L x B x H)
		- Geeignete Matratze: 190 cm L × 90 cm B (Matratze nicht dabei)
		- Bodenfreiheit: 32 cm
		- Gewicht: 12 kg
		- Max. Belastbarkeit: 180 kg
		- Beschreibung: Ein elegantes Polsterprogramm bietet dieses 3-Sitzer Sofa von COTTA mit Rückenverstellung. 
	      Im modernen Design gehalten, fügt es sich in verschiedenste Wohnkonzepte ein.
	       Da die frei im Raum stellbare Couch in mehreren Farben erhältlich ist, kannst du sie passend zu deinem bestehenden Interieur bestellen."/> <br>
			<input type="hidden" name="table5" value="table5">
			<label style="color: yellow">Preis: </label> <span style="color: yellow">1000 €</span><br>
			<label style="color: yellow">Menge: </label> <input type="number" name="menge5" value="" placeholder="Menge eingeben"> 
			<div>⭐⭐⭐⭐⭐</div>
			<button class="button" type="submit">kaufen</button>
		</form>
		</div>
		
		<div>
		<form action="./WarenkorbAppl.jsp" method="post">
		   <img src="<%= request.getContextPath() %>/images/table6.jpeg" title="Produktdetails:
		- Farbe: Hellrosa
		- Material: Metall
		- Größe: 197 × 96 × 88,5 cm (L x B x H)
		- Geeignete Matratze: 190 cm L × 90 cm B (Matratze nicht dabei)
		- Bodenfreiheit: 32 cm
		- Gewicht: 12 kg
		- Max. Belastbarkeit: 180 kg
		- Beschreibung: Ein elegantes Polsterprogramm bietet dieses 3-Sitzer Sofa von COTTA mit Rückenverstellung. 
	      Im modernen Design gehalten, fügt es sich in verschiedenste Wohnkonzepte ein.
	       Da die frei im Raum stellbare Couch in mehreren Farben erhältlich ist, kannst du sie passend zu deinem bestehenden Interieur bestellen."/> <br>
			<input type="hidden" name="table6" value="table6">
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