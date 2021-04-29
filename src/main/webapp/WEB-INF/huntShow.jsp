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
<title>Show Hunting Location Information</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body class = "p-3">
	<div class="d-flex bd-highlight">
  		<div class="p-2 flex-grow-1 bd-highlight"><h1> Welcome to Hunting Location Details!</h1></div>
  		<div class="p-2 bd-highlight"><a href="/outdoors">Main Page</a></div>
  		<div class="p-2 bd-highlight"><a href="/hunthome">Hunting Home</a></div>
  		<div class="p-2 bd-highlight"><a href="/logout">Logout</a></div>
	</div>
	
	<img class = "hunt" src="/images/buck.jpg" class="rounded float-start" alt="buck">


    <h1>Hunting site: <c:out value="${hunt.huntSite}"/></h1>
    
    <table>
        <tr>
            <td>Location:</td>
            <td>${hunt.city}, ${hunt.state}</td>
        </tr>
        <tr>
            <td>Species Population:</td>
            <td>${hunt.species_population}</td>
        </tr>
        <tr>
            <td>Personal Best:</td>
            <td>${hunt.personal_best}</td>
        </tr>


        <c:if test="${hunt.user.getId()==userId}">
            <tr>
                <td><a class="button" href="/hunt/${id}/edit">Edit a Hunting Site</a>
                <form action="/hunt/${id}/delete" method="post" class="d-inline-block">
                                <input type="hidden" name="_method" value="delete">
                                <input type="submit" class="redbtn" value="Delete a Hunting Site">
                </form>
                </td>
            </tr>
        </c:if>
    </table>
    
</body>
</html>