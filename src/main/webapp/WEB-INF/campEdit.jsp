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
<title>Edit A Camp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body class = "p-3">
	<div class="d-flex bd-highlight">
  		<div class="p-2 flex-grow-1 bd-highlight"><h1> Welcome to Edit a Camp!</h1></div>
  		<div class="p-2 bd-highlight"><a href="/outdoors">Main Page</a></div>
  		<div class="p-2 bd-highlight"><a href="/camphome">Camp Home</a></div>
  		<div class="p-2 bd-highlight"><a href="/logout">Logout</a></div>
	</div>
	
	<img class = "p-2" src="/images/angrybear.png" class="rounded float-start" alt="angry bear">
	
	<form:form method="POST" action="/camp/${id}/edit" modelAttribute="editcamp">
		<input type = "hidden" name="_method" value = "put">
		<form:input type="hidden" path="id"></form:input> 
		
			<table>
			<tr>
				<td><form:label path="campName">Site:</form:label></td>
				<td><form:input path="campName" class="input" /></td>				
			</tr>
			<tr>
				<td><form:label path="city">City:</form:label></td>
				<td><form:input path="city" class="input" /></td>
								
			</tr>
			<tr>
				<td><form:label path="state">State:</form:label></td>
				<td><form:select path="state">
							<form:option value="AL">Alabama (AL)</form:option>
							<form:option value="AK">Alaska (AK)</form:option>
							<form:option value="AZ">Arizona (AZ)</form:option>
							<form:option value="AR">Arkansas (AR)</form:option>
							<form:option value="CA">California (CA)</form:option>
							<form:option value="CO">Colorado (CO)</form:option>
							<form:option value="CT">Connecticut (CT)</form:option>
							<form:option value="DE">Delaware (DE)</form:option>
							<form:option value="DC">District Of Columbia (DC)</form:option>
							<form:option value="FL">Florida (FL)</form:option>
							<form:option value="GA">Georgia (GA)</form:option>
							<form:option value="HI">Hawaii (HI)</form:option>
							<form:option value="ID">Idaho (ID)</form:option>
							<form:option value="IL">Illinois (IL)</form:option>
							<form:option value="IN">Indiana (IN)</form:option>
							<form:option value="IA">Iowa (IA)</form:option>
							<form:option value="KS">Kansas (KS)</form:option>
							<form:option value="KY">Kentucky (KY)</form:option>
							<form:option value="LA">Louisiana (LA)</form:option>
							<form:option value="ME">Maine (ME)</form:option>
							<form:option value="MD">Maryland (MD)</form:option>
							<form:option value="MA">Massachusetts (MA)</form:option>
							<form:option value="MI">Michigan (MI)</form:option>
							<form:option value="MN">Minnesota (MN)</form:option>
							<form:option value="MS">Mississippi (MS)</form:option>
							<form:option value="MO">Missouri (MO)</form:option>
							<form:option value="MT">Montana (MT)</form:option>
							<form:option value="NE">Nebraska (NE)</form:option>
							<form:option value="NV">Nevada (NV)</form:option>
							<form:option value="NH">New Hampshire (NH)</form:option>
							<form:option value="NJ">New Jersey (NJ)</form:option>
							<form:option value="NM">New Mexico (NM)</form:option>
							<form:option value="NY">New York (NY)</form:option>
							<form:option value="NC">North Carolina (NC)</form:option>
							<form:option value="ND">North Dakota (ND)</form:option>
							<form:option value="OH">Ohio (OH)</form:option>
							<form:option value="OK">Oklahoma (OK)</form:option>
							<form:option value="OR">Oregon (OR)</form:option>
							<form:option value="PA">Pennsylvania (PA)</form:option>
							<form:option value="RI">Rhode Island (RI)</form:option>
							<form:option value="SC">South Carolina (SC)</form:option>
							<form:option value="SD">South Dakota (SD)</form:option>
							<form:option value="TN">Tennessee (TN)</form:option>
							<form:option value="TX">Texas (TX)</form:option>
							<form:option value="UT">Utah (UT)</form:option>
							<form:option value="VT">Vermont(VT)</form:option>
							<form:option value="VA">Virginia(VA)</form:option>
							<form:option value="WA">Washington(WA)</form:option>
							<form:option value="WV">West Virginia(WV)</form:option>
							<form:option value="WI">Wisconsin(WI)</form:option>
							<form:option value="WY">Wyoming(WY)</form:option>
				</form:select></td>				
			</tr>
			<tr>
				<td><form:label path="features">Features:</form:label></td>
				<td><form:input path="features" class="textarea" /></td>				
			</tr>
			<tr>
				<td><form:label path="price">Price:</form:label></td>
				<td><form:input path="price" class="input" /></td>				
			</tr>					
		</table>
		
		<form:hidden path ="user" value = "${userId}" />
		
		<input type="submit" value="Update Camp" class="button" />
	
	</form:form>
	
	<p>
		<form:errors path="camp.*"></form:errors>
	</p>
	
	<p><c:out value="${error}"/></p>			

</body>
</html>