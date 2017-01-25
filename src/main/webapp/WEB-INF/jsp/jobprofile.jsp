<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Job profile</title>
		
			<spring:url value="/resources/jobportal.css" var="mainCss" />
			<spring:url value="/resources/jquery-3.1.1.min.js" var="jqueryJs" />
			<spring:url value="/resources/jobprofile.js" var="mainJs" />
		
			<link href="${mainCss}" rel="stylesheet" />
		    <script src="${jqueryJs}"></script>
		    <script src="${mainJs}"></script>
		    
	</head>
	<body>
		<form action="">
		
			<div align="center">
				<h1>Job Profile</h1>
			</div>
			
			<div align="center">
				<h3>
					Job profile ID: <input type="text/css" name="jobprofileID" id="jobprofileID">
					Job title: <input type="text/css" name="jobtitle" id="jobtitle">
					Job Type: <input type="text/css" name="Typeofjob" id="typeofjob">
				</h3>
				
				<h3>Description: <input type="text/css" name="Description" id="jobdescription"></h3>
				<h3>Requiredqualifications: <input type="text/css" name="Requiredqualifications" id="requiredqualifications"></h3>
				<h3>Prefferedqualifications: <input type="text/css" name="Prefferedqualifications" id="prefferedqualifications"></h3>
			
				<h3>Salaryrange: <input type="text/css" name="salaryrange" id="salaryrange">
					Workauthorization: <input type="text/css" name="workauthorization" id="workauthorization">
				</h3>
					
				<h3>Contact Details: <input type="text/css" name="contactdetails" id="contactdetails">
					Posted Date: <input type="text/css" name="posted date" id="posteddate">
				</h3>
				
				<h3>
					<a href="homepage.html" type="post" onclick="return validation()" class="button">post</a>
					<a href="application.html" type="Apply" onclick="return validation()" class="button">Apply</a>
				</h3>
								
			</div>
		</form>
		${jobprofilecontent}
	</body>
</html>

