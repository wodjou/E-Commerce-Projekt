<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="pages/controller/LoginController.jsp" method="post">
		<h1>Willkommen auf unsere Webshop</h1>
		<label>Name</label>
		 <input class="input-text" type="text" name="nachname" id="name" placeholder="your Name here"> <br>
		 <label>Password</label>
		 <input type="password" id="passwort" name="password" placeholder="your password here">
		 <input type="submit" name="Login" value="Login">
		 <input type='button' value='Registrieren' onclick="window.location.href='pages/Registration.jsp'">
	  </form>

	<script>
	/*
		setTimeout(() => {
			window.location.href = "pages/HomePage.jsp";
		}, 4000);
	**/
	</script>
</body>
</html>