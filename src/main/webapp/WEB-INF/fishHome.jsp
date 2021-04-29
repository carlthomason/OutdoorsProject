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
<title>Fishing Home</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<link rel="stylesheet" href="css/fishhome.css">
</head>
<body class = "p-5 text-white">
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
                <th>Species Population</th>
                <th>Personal Best</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${fishes}" var="fish">
                <tr>
                    <td>
                    <a class = "text-white" href="/fish/${fish.id }">
                        <c:out value="${fish.fishSite}"/>
                    </a>
                    </td>
                    <td><c:out value="${fish.city}"/></td>
                    <td><c:out value="${fish.state}"/></td>
                    <td><c:out value="${fish.speciespopulation}"/></td>
                    <td><c:out value="${fish.personalbest}"/></td>

                </tr>
            </c:forEach>
        </tbody>
    </table>

    <a class = "text-white" href="/fish">Add a Fishing Location</a>

</body>
</html>