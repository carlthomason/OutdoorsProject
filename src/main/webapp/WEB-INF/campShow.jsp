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
<title>Show Camp Information</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body class = "p-3">
	<div class="d-flex bd-highlight">
  		<div class="p-2 flex-grow-1 bd-highlight"><h1> Welcome to Camp Details!</h1></div>
  		<div class="p-2 bd-highlight"><a href="/outdoors">Main Page</a></div>
  		<div class="p-2 bd-highlight"><a href="/camphome">Camp Home</a></div>
  		<div class="p-2 bd-highlight"><a href="/logout">Logout</a></div>
	</div>
	
	<img class = "p-2" src="/images/beardestroy.jpg" class="rounded float-start" alt="bear destroy">

	<h1>Camp: <c:out value="${camp.campName}" /></h1>
	
	<table>
		<tr>
			<td>Location:</td>
			<td>${camp.city}, ${camp.state}</td>
		</tr>
		<tr>
			<td>Features:</td>
			<td>${camp.features}</td>
		</tr>
		<tr>
			<td>Price:</td>
			<td>${camp.price}</td>
		</tr>
			
						
		<c:if test="${camp.user.getId()==userId}">
            <tr>
                <td><a class="button" href="/camp/${id}/edit">Edit a Camp</a>
                <form action="/camp/${id}/delete" method="post" class="d-inline-block">
                                <input type="hidden" name="_method" value="delete">
                                <input type="submit" class="redbtn" value="Delete a Camp">
                </form>
                </td>
            </tr>
        </c:if>
    </table>
</body>
</html>