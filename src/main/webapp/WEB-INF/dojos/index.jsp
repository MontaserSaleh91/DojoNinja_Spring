<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
	rel="stylesheet" 
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
	crossorigin="anonymous">
<link rel="stylesheet" href="css/main.css" />
<title>Dojos n Ninjas</title>
</head>
<body>
	<div class="container">
		<h1>Dojos N Ninjas</h1>
		<h3><a href="/ninjas">Ninjas</a></h3>
		<a href="/dojos/new">Add Dojo</a>
		<hr />
		<h2>All Dojos</h2>
		<ul>
		<c:forEach items="${ dojos }" var="dojo">
			<li><a href="/dojos/${ dojo.id }">${ dojo.name }</a></li>
		</c:forEach>
		</ul>	
	</div>
</body>
</html>