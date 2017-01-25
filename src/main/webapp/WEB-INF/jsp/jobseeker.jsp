<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Job Seeker</title>
			
			<spring:url value="/resources/jobportal.css" var="mainCss" />
			<spring:url value="/resources/jquery-3.1.1.min.js" var="jqueryJs" />
			<spring:url value="/resources/jobseeker.js" var="mainJs" />
		
			<link href="${mainCss}" rel="stylesheet" />
		    <script src="${jqueryJs}"></script>
		    <script src="${mainJs}"></script>	
		    
	</head>
	<body>
		<form action="jobprofile.html">
		<div align="center" id="jobseeker">
			<h1>One stop to find your Dream Job</h1>
		</div>
		
		<div align="center">
			<h2>First name: <input type="text" name="fname" id="fname">
				Last name: <input type="text" name="lname" id="lname">
			</h2>
		</div>
		<div align="center">
			<h2>Address: <input type="text" name="address" id="address">
				zipcode: <input type="text" name="Zipcode" id="Zipcode">
			</h2>
		</div>
			
		<div align="center">
			<h2>phone number: <input type="text" name="phonenumber" id="phonenumber"></h2>
			<h2>HighestDegree:<input type="text" name="HighestDegree" id="HighestDegree">
				Certifications: <input type="text" name="Certifications" id="Certifications">
			</h2>
		</div>
			
		<div align="center">	
			<h2>workexperience1: <input type="text" name="workexperience1" id="workexperience1">
				workexperience2: <input type="text" name="workexperience2" id="workexperience2">
			</h2>
		</div>
			
		<div align="center">
			<h2>skills: <input type="text" name="skills" id="skills">
			</h2>
			<h2>
				Re-Location: <input type="text" name="Re-Location" id="Re-Location">
				preferred Location: <input type="text" name="prefferedlocation" id="prefferedlocation">
			</h2>
			<a href="homepage.html" class="button">Home</a>
			<a href="jobprofile.html"  type="Submit" onclick="return validation()" class="button">Submit</a>
		</div>
		</form>
		${jobseeker}
	</body>
</html>