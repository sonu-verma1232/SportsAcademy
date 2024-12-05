<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Plan</title>
<%@include file="/common/common_css.html" %>
<style type="text/css">
.container{
width: 35%;
}
body{
background: rgb(2,0,36);
background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(25,159,163,0.9657913336232931) 35%, rgba(0,212,255,1) 100%);
}
</style>
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at theproxyserver
%>


</head>
<body>
<%
String adminId = (String)session.getAttribute("sessionKey");
String userRole = (String)session.getAttribute("role");

if(adminId==null || session.isNew()){
	
	request.setAttribute("message", "Unauthorised Access");
	RequestDispatcher rd = request.getRequestDispatcher("/admin/admin_login.jsp");
	rd.forward(request, response);
	
}
else
{
%>

<span style="font-size: 20px;"><a
		href="/SportsAcademy/admin/admin_home.jsp"
		style="color: blue; text-decoration: none;"><i
			class="fa fa-home" style="color: blue;"></i>Home</a></span>

<div class="container">
<h1 class="text-center">Plan Detail</h1>
   <form action="/SportsAcademy/AddPlan" method="post">
   
   <div class="mb-3">
  <label for="planName" class="form-label">Plan Name</label>
  <input type="text" class="form-control"  placeholder="Enter Plan Name" name="planName" required="required">
</div>

<div class="mb-3">
  <label for="charge" class="form-label">Charge</label>
  <input type="text" class="form-control"  placeholder="Enter Charge" name="charge" required="required">
</div>

<div class="mb-3">
  <label for="duration" class="form-label">Duration</label>
  <input type="text" class="form-control"  placeholder="Enter duration" name="duration" required="required">
</div>

<div class="form-floating mb-3">
  <textarea class="form-control" placeholder="Description" name="description" required="required"></textarea>
  <label for="describe">Description</label>
</div>

<div class="my-3 text-center">
<button class="btn btn-primary">Submit</button>
</div>

   
   </form>
</div>
<%} %>
</body>
</html>