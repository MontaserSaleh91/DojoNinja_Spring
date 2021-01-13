<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
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
		<hr />
		<h2>Add a Dojo</h2>
		<form:form action="/dojos" method="post" modelAttribute="dojo">
			<div class="form-group">
		        <form:label path="name">Dojo Name</form:label>
		        <form:errors path="name"/>
		        <form:input class="form-control" path="name"/>
		    </div>
		    <button>Add Dojo</button>
		</form:form>
	</div>
</body>
</html>