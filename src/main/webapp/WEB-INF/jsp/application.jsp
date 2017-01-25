<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Application</title>
		
			<spring:url value="/resources/jobportal.css" var="mainCss" />
			<spring:url value="/resources/jquery-3.1.1.min.js" var="jqueryJs" />
			<spring:url value="/resources/application.js" var="mainJs" />
		
			<link href="${mainCss}" rel="stylesheet" />
		    <script src="${jqueryJs}"></script>
		    <script src="${mainJs}"></script>
		    
	</head>
	<body>
		<div align="center">
			<h1>Application Status</h1>
			<h3>Application ID: <input type="text/css" name="application" id="application">
			</h3>
			<h3>Posted Date: <input type="datetime" name="posted date" id="postedDate">
			</h3>
				<a href="homepage.html" class="button">Home</a>
		</div>	
	</body>
</html>