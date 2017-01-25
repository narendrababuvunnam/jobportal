<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Employer Details</title>
		
			<spring:url value="/resources/jobportal.css" var="mainCss" />
			<spring:url value="/resources/jquery-3.1.1.min.js" var="jqueryJs" />
			<spring:url value="/resources/employer.js" var="mainJs" />
		
			<link href="${mainCss}" rel="stylesheet" />
		    <script src="${jqueryJs}"></script>
		    <script src="${mainJs}"></script>
		
	</head>
	<body>
		<form action=" ">
		<div align="center">
			<h1>Hello Employer Thanking you for Creating Employment</h1>
			<h3>Please Enter your company details</h3>
			<h4>Company Name: <input type="text" name="companyname" id="companyname"></h4>
			<h4>address: <input type="text" name="address" id="address"></h4>
			<h4>phone Number: <input type="text" name="phonenumber" id="phonenumber"></h4>
			<a href="jobprofile.html" type="Next" onclick="return validation()"class="button">Next</a>
			<a href="homepage.html" class="button">Home</a>
		</div>
		</form>
		${employercontent}
	</body>
</html>