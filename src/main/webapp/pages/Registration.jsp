<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<form action="controller/RegistrationController.jsp" method="post">
<label>Name</label>
<input class="input-text" type="text" name="surname" id="userName" placeholder="your surname here">
<label>Vorname</label>
<input class="input-text" type="text" name="firstname" id="userFirstName" placeholder="your Firstname here">
<label>Email</label>
<input type="email" id="email" name="email" placeholder="your Email here">
<label>Password</label>
<input type="password" id="password" name="pwd">
<input type="submit" name="registration" value="registrieren">
</form>
</body>
</html>