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
<title>Camping Home</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<link href="/css/camphome.css" rel="stylesheet" type="text/css">
</head>
<body class = "p-3 text-white" >
	<div class="d-flex bd-highlight">
  		<div class="p-2 flex-grow-1 bd-highlight"><h1> Welcome, <c:out value="${user.firstName}" /></h1></div>
  		<div class="p-2 bd-highlight"><a class = "text-white" href="/outdoors">Main Page</a></div>
  		<div class="p-2 bd-highlight"><a class = "text-white" href="/logout">Logout</a></div>
	</div>

	
	<table class="table text-white">
		<thead class="thead-dark">
			<tr>
				<th>Site</th>
				<th>City</th>
				<th>State</th>
				<th>Features</th>
				<th>Price</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${camps}" var="camp">
				<tr>
					<td>
					<a class = "text-white" href="/camp/${camp.id}">
						<c:out value="${camp.campName}"/>
					</a>
					</td>
					<td><c:out value="${camp.city}"/></td>
					<td><c:out value="${camp.state}"/></td>
					<td><c:out value="${camp.features}"/></td>
					<td><c:out value="${camp.price}"/></td>
					
					
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<a class = "text-white" href="/camps">Create a Camp</a>
		
</body>
</html>