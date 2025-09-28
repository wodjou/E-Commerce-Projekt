<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/base.css">
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/utilities.css">
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/login.css">
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/sofa.css">
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

<title>Insert title here</title>
</head>
<body>
 <%@include file="/components/header.jsp" %>
 <h1> 
 
 Treffen Sie ihre Wahl
 </h1>
 <br>
 <% 
if(!warenkorb.getWarenkorbProdukt().isEmpty()){
	out.println("<h1>"+ warenkorb.getInfoMessage()+"</h1>");
}
 
 
 %>
 <div id="first" style="margin-left: 200px">
	 <div>
	 <form action="./WarenkorbAppl.jsp" method="post">
		   <img src="<%= request.getContextPath() %>/images/Sofa1.jpeg" title="Produktdetails:
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
			<input type="hidden" name="sofa1" value="Sofa1">
			<label style="color: yellow">Preis: </label> <span style="color: yellow">1000 €</span><br>
			<label style="color: yellow">Menge: </label> <input type="number" name="mengesofa1" value="" placeholder="Menge eingeben"> 
			<div>⭐⭐⭐⭐⭐</div>
			<button class="button" type="submit">kaufen</button>
		</form>
	</div>
	
	<div>
		 <form action="./WarenkorbAppl.jsp" method="post">
		   <img src="<%= request.getContextPath() %>/images/Sofa2.jpeg" title="Produktdetails:
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
			<input type="hidden" name="sofa2" value="Sofa2">
			<label style="color: yellow">Preis: </label> <span style="color: yellow">1000 €</span><br>
			<label style="color: yellow">Menge: </label> <input type="number" name="mengesofa2" value="" placeholder="Menge eingeben"> 
			<div>⭐⭐⭐⭐⭐</div>
			<button class="button" type="submit">kaufen</button>
		</form>
	</div>
</div>

<div id="second" id="first" style="margin-left: 200px">
	<div>
		<form action="./WarenkorbAppl.jsp" method="post">
		   <img src="<%= request.getContextPath() %>/images/Sofa3.jpeg" title="Produktdetails:
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
			<input type="hidden" name="sofa3" value="Sofa3">
			<label style="color: yellow">Preis: </label> <span style="color: yellow">1000 €</span><br>
			<label style="color: yellow">Menge: </label> <input type="number" name="mengesofa3" value="" placeholder="Menge eingeben"> 
			<div>⭐⭐⭐⭐⭐</div>
			<button class="button" type="submit">kaufen</button>
		</form>
	</div>
	
	<div>
	  
	          <form action="./WarenkorbAppl.jsp" method="post">
		   <img src="<%= request.getContextPath() %>/images/Sofa4.jpeg" title="Produktdetails:
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
			<input type="hidden" name="sofa4" value="Sofa4">
			<label style="color: yellow">Preis: </label> <span style="color: yellow">1000 €</span><br>
			<label style="color: yellow">Menge: </label> <input type="number" name="mengesofa4" value="" placeholder="Menge eingeben"> 
			<div>⭐⭐⭐⭐⭐</div>
			<button class="button" type="submit">kaufen</button>
		</form>
	 </div>
 </div>
 
 <div id="third" id="first" style="margin-left: 200px">
	 <div>       
	         
	         <form action="./WarenkorbAppl.jsp" method="post">
		   <img src="<%= request.getContextPath() %>/images/Sofa5.jpeg" title="Produktdetails:
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
			<input type="hidden" name="sofa5" value="Sofa5">
			<label style="color: yellow">Preis: </label> <span style="color: yellow">1000 €</span><br>
			<label style="color: yellow">Menge: </label> <input type="number" name="mengesofa5" value="" placeholder="Menge eingeben"> 
			<div>⭐⭐⭐⭐⭐</div>
			<button class="button" type="submit">kaufen</button>
		</form>
	</div>
		
	           
	          
	          
	 <div>        
	 <form action="./WarenkorbAppl.jsp" method="post">
		   <img src="<%= request.getContextPath() %>/images/Sofa6.jpeg" title="Produktdetails:
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
			<input type="hidden" name="sofa6" value="Sofa6">
			<label style="color: yellow">Preis: </label> <span style="color: yellow">1000 €</span><br>
			<label style="color: yellow">Menge: </label> <input type="number" name="mengesofa6" value="" placeholder="Menge eingeben"> 
			<div>⭐⭐⭐⭐⭐</div>
			<button class="button" type="submit">kaufen</button>
		</form>
	</div> 
</div>    
       
          
       <%@ include file="/components/footer.jsp" %>   
</body>
</html>