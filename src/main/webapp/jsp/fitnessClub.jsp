<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Fitness Club</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<%@include file="/common/common_css.html" %>

<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at theproxyserver
%>

</head>
<body>
<%@include file="/html/header.html" %>

<%

ResourceBundle rb = ResourceBundle.getBundle("sportsacademy/databaseinfo/db_info");

%>


<div class="container">
<h1 style="text-align: center;margin:2%;"><b>Fitness Club</b><%=rb.getString("db.quote") %></h1>
<p style="margin-bottom:2%; font-weight: 500;">Our sports academy fitness club is designed to help athletes reach their full potential. It features cutting-edge cardio and strength training equipment, along with specialized areas for yoga, Pilates, and high-intensity interval training (HIIT). We offer personalized training programs tailored to individual needs, ensuring each member can achieve their fitness goals effectively and safely.
</p>
</div>

<div class="container mt-4">

<video src="/SportsAcademy/videos/gym2.mp4" controls="controls" class="me-2 rounded-4 border border-danger"></video>
<video src="/SportsAcademy/videos/gym1.mp4" controls="controls" class="rounded-4 border border-danger"></video>

</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>