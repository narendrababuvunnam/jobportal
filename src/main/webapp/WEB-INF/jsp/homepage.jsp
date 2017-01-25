<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Job Portal</title>
		
			<spring:url value="/resources/jobportal.css" var="mainCss" />
			<spring:url value="/resources/jquery-3.1.1.min.js" var="jqueryJs" />
			<spring:url value="/resources/homepage.js" var="mainJs" />
		
			<link href="${mainCss}" rel="stylesheet" />
		    <script src="${jqueryJs}"></script>
		    <script src="${mainJs}"></script>
	</head>
	
	<body background="resources/jobportalbackground.jpg" class="homepage">
		<form action="jobprofile.html">
		
		<div>
			<h1 align="center"> Welcome to JOB World</h1>
					
					<h2 align="right">email: <input type="text" name="email" id="email">
					</h2>
					
					<h2 align="right">Password      : <input type="text" name="password" id="password">
					</h2>
					
					<p align="right"><a href="jobprofile.html" type="login" onclick="return validation()" class="button">login</a>
						<a href="register.html" class="button">new account</a>
						<a href="register.html" >Forgot password</a>
					</p>
					
					<h2 align="center">find your Interested Job</h2>
					
					<h4 align="center"><input type="text" name="search" placeholder="Type Keywords.." id="searchbar"> <input type="text" name="location" placeholder="Location.." id="location" id="search"></h4>
		</div>
		
		<div align ="center">
				<h1>
				<a href="" class="butt">Contact us</a>
					<a href="application.html" class="butt">Application status</a>
				</h1>
		</div>
		</form>
		${homepagecontent}
	</body>
</html>