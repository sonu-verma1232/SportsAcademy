<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="sportsacademy.beans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sports Gallery</title>
<%@include file="/common/common_css.html" %>
<style>

img{
transition: transform 0.2s;
}

img:hover {
	transform: scale(1.1);
}

</style>

<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at theproxyserver
%>

</head>
<body style="margin: 0px;">
<div style="width: 100%;height: 60px; background-color: olive;font-family: monospace;">
<a href="/SportsAcademy/jsp/index.jsp" style="margin-left: 5px;"><button class="btn btn-secondary" style="color: black">Home</button></a>
<Strong style="margin-left:25%;text-align: center;font-size: 34px;">Sports Gallery

<jsp:useBean id="slogan" class="sportsacademy.beans.Slogan" scope="application"></jsp:useBean>
<jsp:getProperty property="tagline" name="slogan"/>

</strong></div>
<div style="width: 100%;background-color: blanchedalmond;">

<a href="/SportsAcademy/html/Football.html"><img alt="Football" src="/SportsAcademy/images/football-logo1.jpg" style="margin: 20px; border-radius: 0px 25px 0px 25px; height: 355px; width: 30%;box-shadow: 2px 1px 3px green, -2px -1px 3px red;"></a>
<a href="/SportsAcademy/html/Cricket.html"><img alt="Cricket" src="/SportsAcademy/images/vector-cricket-logo.jpg" style="margin: 20px;border-radius: 0px 25px 0px 25px;height: 355px;width: 30%;box-shadow: 2px 1px 3px green, -2px -1px 3px red;"></a>
<a href="/SportsAcademy/html/Hockey.html"><img alt="Hockey" src="/SportsAcademy/images/hockey-logo.jpg" style="margin: 20px;border-radius: 0px 25px 0px 25px;height: 355px; width: 30%;box-shadow: 2px 1px 3px green, -2px -1px 3px red;"></a>
</div>
<div style="width:100%;background-color: blanchedalmond">
<a href="/SportsAcademy/html/TableTannis.html"><img alt="Table Tannis" src="/SportsAcademy/images/table-tennis-logo.avif" style="margin: 20px;border-radius: 0px 25px 0px 25px;height: 355px; width: 30%;margin-left: 20%;box-shadow: 2px 1px 3px green, -2px -1px 3px red;"></a>
<a href="/SportsAcademy/html/Badminton.html"><img alt="Badminton" src="/SportsAcademy/images/badminton-logo.jpg" style="margin: 20px;border-radius: 0px 25px 0px 25px;height: 355px; width: 30%;box-shadow: 2px 1px 3px green, -2px -1px 3px red;"></a>
</div>
<div style="width: 100%;height: 40px;background-color: black;color: white;font-size: 18px;">
<span style="margin-left: 45%;">&copy; Created by Sonu Verma &hearts;</span>
</div>
</body>
</html>