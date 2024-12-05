<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Transportation</title>
<%@include file="/common/common_css.html" %>
<!-- <style type="text/css">

.box{
width: 25%;
height: 800px;
background-color: lightgreen;
}

</style> -->

<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at theproxyserver
%>

</head>
<body>
<%@include file="/html/header.html" %>

<div style="width: 100%;font-weight: 500; justify-content: center;gap:20px;" class="d-flex mt-2 p-1">

<div class="w-25 border border-black">
<h2>Shuttle Services</h2>
<p class="ms-2">We provide regular shuttle services that transport athletes between training facilities, dormitories, and other key locations within the academy. Our shuttles run on a fixed schedule to ensure timely and efficient transportation.</p>
<img alt="" src="/SportsAcademy/images/shuttle.jpg"  style="height: 250px;width: 100%; border-radius: 100%">
</div>

<div class="w-25 border border-black">
<h2>Charter Buses</h2>
<p class="ms-2">For team travel to competitions and training camps, we use comfortable and well-equipped charter buses. These buses are designed to accommodate large groups and provide a smooth and enjoyable travel experience.</p>
<img alt="" src="/SportsAcademy/images/CharterBus.jpg" style="height: 250px;width:100%;border-radius: 100%">
</div>

<div class="w-25 border border-black">
<h2>Public Transportation</h2>
<p class="ms-2">Located in an urban area, our academy is well-connected by public transportation. Local buses and trains provide easy access to our facilities, making it convenient for athletes and visitors to commute.</p>
<img alt="" src="/SportsAcademy/images/publicTrans.jpg" style="height: 250px;width:100%;border-radius: 100%">
</div>


</div>

<div class="w-25 border border-black  ms-auto me-auto p-1" style="font-weight: 500">
<h2>Bicycle Programs</h2>
<p class="ms-2">We encourage a healthy and sustainable mode of transportation by offering bicycles for athletes to use within the academy premises. This program promotes fitness and reduces our carbon footprint.</p>
<img alt="" src="/SportsAcademy/images/bicycle.jpeg" style="height: 250px;width:100%;border-radius: 100%">
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>