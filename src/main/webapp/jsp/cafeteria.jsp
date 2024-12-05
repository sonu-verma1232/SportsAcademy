<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Cafeteria</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<%@include file="/common/common_css.html" %>
<style type="text/css">

img{
width: 30%;
height: 90px;

}

.table-striped{
text-align: center;
}

</style>


<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at theproxyserver
%>


</head>
<body>
<%@include file="/html/header.html" %>
<div>
<h1 style="text-align: center;">Services we provides</h1>
</div>

<div class="container w-75 d-flex mt-5">

<table class="table table-striped table-bordered border-dark">
<thead>
<tr>
<th>Product Name</th>
<th>Price</th>
<th>Image</th>
</tr>
</thead>
<tbody>

<tr>
<td>Samosa</td>
<td>10Rs</td>
<td><img alt="Samosa" src="/SportsAcademy/images/samosa.jpg"></td>
</tr>

<tr>
<td>Tea</td>
<td>20Rs</td>
<td><img alt="Tea" src="/SportsAcademy/images/tea.jpeg"></td>
</tr>

<tr>
<td>Fries</td>
<td>25Rs</td>
<td><img alt="Fries" src="/SportsAcademy/images/fries.jpeg"></td>
</tr>

<tr>
<td>Chips</td>
<td>25Rs</td>
<td><img alt="Chips" src="/SportsAcademy/images/chips.jpeg"></td>
</tr>

<tr>
<td>Coffee</td>
<td>50Rs</td>
<td><img alt="Coffee" src="/SportsAcademy/images/coffee.jpeg" ></td>
</tr>

<tr>
<td>Aloo Tikki Burger</td>
<td>60Rs</td>
<td><img alt="Aloo Tikki Burger" src="/SportsAcademy/images/burger.jpg" ></td>
</tr>

<tr>
<td>Dosa</td>
<td>70Rs</td>
<td><img alt="Dosa" src="/SportsAcademy/images/dosa.webp"></td>
</tr>

<tr>
<td>Chola Bhature</td>
<td>80Rs</td>
<td><img alt="Chola Bhature" src="/SportsAcademy/images/cholaBhature.jpg"></td>
</tr>

</tbody>
</table>

</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>