<%@page import="javax.websocket.SendResult"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="sportsacademy.beans.*" %>
    <%@page import="sportsacademy.dao.*" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Plan Description</title>
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
String pname = request.getParameter("nm");
if(pname == null){
	response.sendRedirect("/SportsAcademy/jsp/view_plans.jsp");
}
else{
	CommonDao dao = new CommonDao();
	String desc = dao.viewPlanDescription(pname);
%>
<span style="font-size: 25px;"><a href="/SportsAcademy/jsp/view_plans.jsp" style="color: blue;text-decoration: none;"><button class="btn btn-primary">Back</button> </a></span>


<h1 style="text-align: center;">Plan Description for <%=pname %></h1>

<%-- <div class="text-center w-50 bg-info" style="margin-left: 25%;">
<h2><%=desc %></h2>
</div> --%>



<div class="card" style="width: 400px; margin-left: 38%;margin-top: 2%">

  <div class="card-body bg-info">
    <h5 class="card-title text-center"><%=pname %></h5>
    <p class="card-text"><%=desc %></p>
    
  </div>
</div>


<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
		<%} %>
</body>
</html>