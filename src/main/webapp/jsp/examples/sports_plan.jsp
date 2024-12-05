<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sports Plan</title>

<%@include file="/common/common_css.html" %>

<style type="text/css">

body{
background-image: url("/SportsAcademy/images/bg.avif");
background-repeat: no-repeat;
background-size: 100%;
}

.container{
margin-left: 35%;
margin-top: 4%;
border-radius: 5%;
width: 30%;
box-shadow: 8px 8px 10px lightblue, -8px -8px 10px lightblue;
}

</style>

</head>
<body>

<div class="container border border-dark border-4 text-info">

<form action="/SportsAcademy/jsp/examples/sports_plan_details.jsp" method="post">

<div class="my-4">
<label for="planid" class="form-label">Plan ID</label>
<input type="number" placeholder="Enter Plan ID" class="form-control" name="planid">
</div>

<div class="mb-4">
<label for="planname" class="form-label">Plan Name</label>
<input type="text" placeholder="Enter Plan Name" class="form-control" name="planname">
</div>

<div class="mb-4">
<label for="duration" class="form-label">Duration</label>
<input type="text" placeholder="Enter Plan Duration" class="form-control" name="duration">
</div>


<div class="mb-4">
<label for="charges" class="form-label">Charges</label>
<input type="number" placeholder="Enter Charges" class="form-control" name="charge">
</div>

<div class="mb-4">
<label for="facility" class="form-label">Facility</label>
<textarea rows="3" cols="10" placeholder="Enter Facility" class="form-control" name="facility"></textarea>
</div>

<div class="my-4 text-center">
<button type="submit" class="btn btn-danger">Submit</button>
</div>

</form>

</div>

</body>
</html>