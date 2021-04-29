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
<title>Welcome</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body>
	<div class = "d-flex justify-content-between p-4">
	<h1> Welcome, <c:out value="${user.firstName}" /></h1>
	
	<a href="/logout">Logout</a>
	</div>
	
	
	<div class="row align-items-center p-3">
    	<div class="col">
      		<a href="/hunthome"><img class = "hunt" src="/images/hunting2.jpg" class="rounded float-start" alt="buck"></a>
    	</div>
    	<div class="col">
     		 <a href="/fishhome"><img class = "fish" src="/images/fishing3.jpg" class="rounded float-start" alt="fish"></a>
    	</div>
   		<div class="col">
      		<a href="/camphome"><img class = "camp" src="/images/camping2.jpg" class="rounded float-start" alt="camp"></a>
    	</div>
	</div>
	
	<h2 class="d-flex justify-content-center p-5">Message Wall</h2>
    <div class="d-flex justify-content-center">
        <div class=" mh-25 w-25 p-3 overflow-scroll" style="max-height:200px;">
            <div id="commentbox" >
                <c:forEach items="${commentlist}" var="comment">
                        <p>${comment.comment} posted by: ${comment.getUser().firstName} ${comment.getUser().lastName}</p>
                    </c:forEach>
            </div>
        </div>
    </div>
    <div class="p-3 d-flex justify-content-center">
        <form:form action="/newMessage" method="post" modelAttribute="newMessage">
                <input type="hidden" value="${user.id}" name="user"/>
                <input type="hidden" value="${camp.id}" name="camp"/>
                <p>
                    <form:label path="comment">Message: </form:label>
                    <form:textarea path="comment"/>

                </p>
                <input type="submit" value="Post Message"/>
            </form:form>
     </div>
	
</body>
</html>