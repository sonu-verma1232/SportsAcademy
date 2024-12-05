<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="sportsacademy.beans.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee RequestScope</title>
</head>
<body>

	<h1>Use of Action Tags</h1>

	<%-- <% Employee e = new Employee(); %>    --%>

	<jsp:useBean id="emp" class="sportsacademy.beans.Employee"
		scope="request"></jsp:useBean>

	<jsp:setProperty property="name" name="emp" value="Scott" />
	<!-- it is used to set property of bean class -->
	<jsp:setProperty property="phone" name="emp" value="1425362654" />
	<jsp:setProperty property="salary" name="emp" value="500000" />

	<jsp:forward page="/jsp/examples/employee_details.jsp"></jsp:forward>
	<!-- Relative path -->

    



</body>
</html>