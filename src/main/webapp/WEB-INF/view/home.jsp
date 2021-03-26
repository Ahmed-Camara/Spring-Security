<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!DOCTYPE html>
<html>
<head>
	
	<title>Login Page</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	
	<link rel="stylesheet"
		 href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

	<hr>
	
	<p>
		User: <security:authentication property="principal.username"/>
		<br>
		Role(s) :<security:authentication property="principal.authorities"/> 
	</p>
	
	<hr>
		
		<p>
			<a href="${pageContext.request.contextPath}/leaders">Leaders</a> (only for Leaders)
		</p>
		
		<p>
			<a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a> (only for Admin team)
		</p>
	
	<hr>
	<form:form action="${pageContext.request.contextPath}/logout" method="POST">
		<input class="btn btn-primary" type="submit" value="Log out"/>
	</form:form>
</body>
</html>