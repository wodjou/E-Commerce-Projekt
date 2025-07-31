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
 <%@include file="/components/header.jsp" %>
<h1>Unsere Betten</h1>
<form action="./BettAppl.jsp" method="get">
<table class="pajemi">
 
  <tr>
    <td><img src="../images/Bett1.png" title="Produktdetails:
- Farbe: Tintenschwarz 
- Material: Metall
- Größe: 208 x 91,8 x 86,4 cm (L x B x H)
- Geeignete Matratze: 90 x 200 cm (Matratze nicht dabei)
- Bodenfreiheit: 40 cm
- Gewicht: 14 kg
- Maximale Belastbarkeit: 230 kg"/></td>
    <td><img src="../images/Bett2.png" title="Produktdetails:
- Farbe: Grau
- Material: Schlaumstoff
- Größe: 197 × 96 × 108 cm (L x B x H)
- Geeignete Matratze: 200 cm L × 140 cm B (Matratze nicht dabei)
- Härtegrad: H4
- Beleuchtung: LEDs, 0,8 W, 12 V, 0,08 A, Blau
- Gewicht: 38 kg
- Max. Belastbarkeit: 455 kg
- 4 x Schublade "/>
</tr>
    <tr>
   
    <td><img src="../images/Bett3.jpeg" title="Produktdetails:
- Farbe: Hellrosa
- Material: Metall
- Größe: 197 × 96 × 88,5 cm (L x B x H)
- Geeignete Matratze: 190 cm L × 90 cm B (Matratze nicht dabei)
- Bodenfreiheit: 32 cm
- Gewicht: 12 kg
- Max. Belastbarkeit: 180 kg"  />
 <td><img src="../images/Bett4.jpeg" title="Produktsdetails:
- Farbe: Beige
- Material: Baumwolle+Holz+Metall
- Größe: 222x91x109cm (L x B x H)
- Geeignete Matratze: 90x200cm
- Beleuchtung: LEDs, 0,8 W, 12 V, 0,08 A, Hellblau
- Gewicht: 37kg
- Max.Belastbarkeit: 150kg"/>
</tr>
<tr>
    <td><img src="../images/bett5'.jpeg" title="Produktsdetails:
 - Farbe: Beige
- Produktgröße: 205x96x104cm (L x B x H)
- Kopfteil Höhe: 104cm
- Fußteil Höhe: 28cm
- Bodenfreiheit: 13cm
- Bettbezug: Samt
- Material: Massivholz + MDF + Metall
- Geeignete Matratze: 90x200cm (Matratze nicht dabei)
- Max. Belastbarkeit: 120kg
- Nettogewicht: 20kg"/></td>
    <td><img src="../images/Bett6.jpeg" title="Produktdetails:
- Farbe: Schwarz
- Material: Holz (90% Sperrholz + 10% MDF), Samtstoff (50% Samt + 35% Vliesstoff + 15% Mesh-Gewebe)
- Größe: 197 × 96 × 108 cm (L x B x H)
- Geeignete Matratze: 200 cm L × 140 cm B 
- Härtegrad: H4
- Beleuchtung: LEDs, 0,8 W, 12 V, 0,08 A, Blau
- Gewicht: 12 kg
- Max. Belastbarkeit: 200 kg">
</td>
    </tr>
</table>

</form>
<%@ include file="/components/footer.jsp" %>  
</body>
</html>