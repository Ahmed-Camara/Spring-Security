<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>access denied</title>
</head>
<body>
	<hr>
		<div style="text-align:center;">
			<h2>Access-denied</h2>
	
			<p>This page is not accessible for this user</p>
		
			<a href="${pageContext.request.contextPath}/">Back home page</a>
		</div>
	<hr>
</body>
</html>