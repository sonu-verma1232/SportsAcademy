<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>
<%@page import="java.awt.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1 style="text-align: center;">JSP Syntax</h1>

<%

String name = "Sonu Verma";
int age = 20;
String course = "Advance JAVA";

%>

<h2 style="color: red;font-family: cursive;">Hello <%= name %></h2>
<p style="color: green;font-size: 20px;font-family: cursive;">Your age is <%= age %> and your course is <%=course %></p>


<h2>Today's date and time is
<%
Date d = new Date();
%>

<%= d %>
</h2>


</body>
</html>