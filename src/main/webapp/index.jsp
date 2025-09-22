<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/base.css">
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/utilities.css">
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/login.css">
  

  <title>Einloggen/Registrieren</title>
</head>
<body>
 <%@include file="/components/header.jsp" %>

<form action="controller/LoginController.jsp" method="post">
  <h2 class="heading1">Einloggen/Registrieren</h2>
  <main class="page-wrapper">
    <section class="login-container">
        <form class="login-form">
        <div class="input-group">
            <label for="username">Username</label>
            <input type="text" id="username" placeholder="Username..." name = "nachname"> 
        </div>
        <br>
        <div class="input-group">
       
            <label for="password">Password</label><br>
            <div class="password-input">
                <input type="password" id="password" placeholder="Password" name = "password">
                <span class="password-toggle">️</span> 
            </div>
       <br>
           <button class="button" type="submit">Continue</button>
    
           <p class="register-link">Kein Konto? <a href="Registration.jsp">Registrieren</a></p>
        </div>
           </form>
        <div class="image-container">
        <img
          class="image-container img"
          src="<%= request.getContextPath() %>/images/login-image.png"
          alt="login Detail image"
        >
        </div>
    </section>
 </main>
 </form>
   <%@ include file="/components/footer.jsp" %>
</body>
</html>
