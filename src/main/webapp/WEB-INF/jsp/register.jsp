<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Register</title>
		
		<spring:url value="/resources/jobportal.css" var="mainCss" />
			<spring:url value="/resources/jquery-3.1.1.min.js" var="jqueryJs" />
			<spring:url value="/resources/register.js" var="mainJs" />
		
			<link href="${mainCss}" rel="stylesheet" />
		    <script src="${jqueryJs}"></script>
		    <script src="${mainJs}"></script>	
	</head>
	<body>
		<form action="">
		<div align="center">
			<h1>Welcome to Registration</h1>
				<img src="resources/jobportal.png" class="register">
			<h3 align="right">
				email: <input type="text" name="email" id="email">
				password: <input type="text" name="password" id="password">
				re-enter password: <input type="text" name="re-enter password" id="re-enterpassword"><br>
				<a href="jobseeker.html" type="JobSeeker" onclick="return validation()"class="button">JobSeeker</a>
				<a href="employer.html" type="Employer" onclick="return validation()"class="button">Employer</a>
			</h3>
		</div>
		</form>
		${registercontent}
	</body>
</html>