<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="sportsacademy.beans.*" %>
    <%@page import="sportsacademy.dao.*" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Plans</title>
<%@include file="/common/common_css.html" %>

<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at theproxyserver
%>

</head>
<body>
<%@include file="/html/header.html" %>
<h1 style="text-align: center;">All Plans offered by Us</h1>

<%
CommonDao dao = new CommonDao();
ArrayList<Plan> planList = dao.viewPlans();

%>

<table class="table table-striped table-bordered bordered dark container"
				style="text-align: center;">

				<thead class="table-dark table-active">
					<tr>
						<th>Plan Name</th>
						<th>Charges</th>
						<th>Duration</th>
						
					</tr>
				</thead>
				<tbody>

					<%
					for (Plan p : planList) {
					%>

					<tr>
						<td><a href="/SportsAcademy/jsp/plan_description.jsp?nm=<%=p.getPlanName() %>" style="text-decoration: none;"><%=p.getPlanName()%></a></td>
						<td><%=p.getCharge()%></td>
						<td><%=p.getDuration()%></td>
					</tr>

					<%
					}
					%>

				</tbody>

			</table>


<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>