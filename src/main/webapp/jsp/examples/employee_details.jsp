<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="sportsacademy.beans.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Details</title>
</head>
<body>

	<jsp:useBean id="emp" class="sportsacademy.beans.Employee"
		scope="request"></jsp:useBean>

	<h1>Fetching values form Employee</h1>

	<h2>
		Employee Name :
		<jsp:getProperty property="name" name="emp" /></h2>
	<h2>
		Employee Phone :
		<jsp:getProperty property="phone" name="emp" /></h2>
	<h2>
		Employee Salary :
		<jsp:getProperty property="salary" name="emp" /></h2>


</body>
</html>