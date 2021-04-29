<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Registration/Login Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<link href="/css/login.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class = "d-flex justify-content-center align-items-center mt-5 ms-5">
	<div class = "container-md text-white">
		<h1>Register!</h1>
		
		<p><form:errors path="user.*"/></p>
		<p><c:out value="${error}" /></p>
		<form:form method="post" action="/register" modelAttribute="user">
			<p>
				<form:label path="firstName">First Name:</form:label>
				<form:input type="firstName" path="firstName"/>
			</p>
			<p>
				<form:label path="lastName">Last Name:</form:label>
				<form:input type="lastName" path="lastName"/>
			</p>
			<p>
				<form:label path="email">Email:</form:label>
				<form:input type="email" path="email"/>
			</p>
			<p>
				<form:label path="password">Password:</form:label>
				<form:password path="password"/>
			</p>
			<p>
				<form:label path="passwordConfirmation">Password Confirmation:</form:label>
				<form:password path="passwordConfirmation"/>
			</p>
			<input type="submit" value="Register!"/>
		</form:form>
	</div> <!-- Register Ends -->
	
	<div class = "container-md text-white">
		 <h1>Login</h1>
   		 <p><c:out value="${error}" /></p>
		 <form method="post" action="/login">
         	<p>
            	<label type="email" for="email">Email</label>
            	<input type="text" id="email" name="email"/>
        	</p>
        	<p>
            	<label for="password">Password</label>
            	<input type="password" id="password" name="password"/>
        	</p>
        	<input type="submit" value="Login!"/>
    	</form>
	</div>
</div>

<br><br>
<img class = "p-2" src="/images/java.png" class="rounded float-start" alt="meme">
</body>
</html>