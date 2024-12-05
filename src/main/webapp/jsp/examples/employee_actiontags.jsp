<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="sportsacademy.beans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee</title>
</head>
<body>

<h1>Use of Action Tags</h1>

<%-- <% Employee e = new Employee(); %>    --%>

<jsp:useBean id="emp" class="sportsacademy.beans.Employee"></jsp:useBean>

<jsp:setProperty property="name" name="emp" value="Scott"/>   <!-- it is used to set property of bean class -->
<jsp:setProperty property="phone" name="emp" value="1425362654"/>  
<jsp:setProperty property="salary" name="emp" value="500000"/> 

<h1>Fetching values form Employee</h1>

<h2>Employee Name : <jsp:getProperty property="name" name="emp"/></h2>
<h2>Employee Phone : <jsp:getProperty property="phone" name="emp"/></h2>
<h2>Employee Salary : <jsp:getProperty property="salary" name="emp"/></h2>



</body>
</html>