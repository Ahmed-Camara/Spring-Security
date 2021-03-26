<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Leaders - Home page</title>
</head>
<body>
	<hr>
	<h2>Welcome to Leaders page</h2>
	
	<p>This is an restricted page accessible only for the Admin team</p>
		
	<a href="${pageContext.request.contextPath}/">Back home page</a>
	<hr>
</body>
</html>