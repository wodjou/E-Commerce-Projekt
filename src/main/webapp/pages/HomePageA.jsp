<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>HomePageView</title>
    <link rel="stylesheet" type="text/css" href="../css/HomePageA.css" />
    <style type="text/css">
		   		 .button {
		  border-radius: 0.3rem;
		  background-color: rgb(69, 109, 196);
		  color: #fff;
		  outline: none;
		  border-width: 0;
		  padding: 0.4rem 0.8rem;
		
		  display: flex;
		  align-items: center;
		  gap: 0.4rem;
		  justify-content: center;
		}
    </style>
</head>
<body>
<jsp:useBean id="user" class="models.User" scope="session"/>

<header>
    <img src="../images/logo.jpg"id="logo" >
    <% 
	    if(user.getName() == null) {
	    	out.println( "<button type='button' name='BtnLogin' onclick=\"window.location.href='./login.jsp'\">sich einloggen </button>");
	    } 
	    else{
	    	out.println("<h3>"+"Willkommen "+user.getName()+"</h3>");
	    }
    %>
    
    <!-- <div class="menu">LOGIN<br>ET<br>KONTAKT</div> -->
</header>

<main>
    <section class="welcome">
       <h1>Herzlich willkommen bei Pajemi!

Schön, dass Sie da sind!</h1><br>
Bei Pajemi finden Sie moderne Möbel, die Stil, Komfort und Qualität vereinen – perfekt für ein Zuhause, in dem Sie sich rundum wohlfühlen können.

Ob Sie auf der Suche nach einem eleganten Sofa, einem gemütlichen Bett oder einem funktionalen Tisch sind – wir beraten Sie gern persönlich und helfen Ihnen, das passende Möbelstück zu finden.

🌿 Lassen Sie sich inspirieren – und gestalten Sie Ihr Zuhause mit Pajemi ganz nach Ihrem Geschmack.

Wir freuen uns auf Sie!
<br>
<br>
<img src="../images/homepage.png"id="homepage" >
    </section>

    <section class="categories">
        <div class="category">
            <div class="image-circle" style="background-image: url('../images/betthp.jpeg');"></div>
            <p><a href="./BettView.jsp">BETTEN</a></p>
        </div>
        <div class="category">
            <div class="image-circle" style="background-image: url('../images/sofahp.webp');"></div>  
            <p><a href="./SofaView.jsp">SOFAS</a></p>
        </div>
        <div class="category">
            <div class="image-circle" style="background-image: url('../images/tischhp.jpg');"></div>
             <p><a href="./TischView.jsp">TISCHE</a></p>
        </div>
    </section>
</main>

</body>
</html>