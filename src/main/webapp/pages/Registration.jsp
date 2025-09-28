<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Registration</title>
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/registration.css">
</head>
<body>
  <div class="container">
    <div class="left-panel">
      <div class="overlay"></div>
      <img src="<%= request.getContextPath() %>/images/RegistrationBild.jpg" alt="Woman with tablet" />
    </div>
    <div class="right-panel">
      <form class="signup-form" action="controller/RegistrationAppl.jsp" method="post">
        <h2>Registration</h2>

        <label for="fullname">name</label>
        <input type="text" id="fullname" placeholder="Name..." name="surname"/>
         <label for="username">Vorname</label>
        <input type="text" id="username" placeholder="Vorname..." name ="firstname"/>

        <label for="email">Email</label>
        <input type="email" id="email" placeholder="Email address..." name="email"/>

       

        <label for="password">Password</label>
        <input type="password" id="password" placeholder="***********" name="pwd"/>

        <button type="submit" class="signup-btn">Registration</button>

      </form>
    </div>
  </div>
</body>
</html>
