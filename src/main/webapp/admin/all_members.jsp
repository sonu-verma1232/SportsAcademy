<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="sportsacademy.dao.*" %>
    <%@page import="sportsacademy.beans.*" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Member</title>
<%@include file="/common/common_css.html" %>

<style type="text/css">

body{
background: linear-gradient(90deg, #00C9FF 0%, #92FE9D 100%);
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


<span style="font-size: 25px;"><a href="/SportsAcademy/admin/admin_home.jsp" style="color: blue;text-decoration: none;"><i
			class="fa fa-home" style="color: blue;"></i>Home</a></span>
	<h1 style="text-align: center;">All Registered Member</h1>

<%
   AdminDao dao = new AdminDao();
   ArrayList<Member> list = dao.allMember();
   int length = list.size();
%>

<div class="container">
		<!--  style="overflow: scroll;" -->

		<%
	if (length == 0) {
	%>
		<h2>No member available at Present !!!</h2>
		<%
		} else {
		%>
		
			<table class="table table-striped table-bordered bordered dark my-4"
				style="text-align: center">
<!--  member_id, password, name, email, phone, address, sports_name, plan_name, date -->
				<thead class="table-dark table-active">
					<tr>
					    
						<th>Member ID</th>
						<th>Name</th>
						<th>Email</th>
						<th>Phone Number</th>
						<th>Address</th>
						<th>Sports Name</th>
						<th>Plan Name</th>
						<th>Date</th>
					</tr>
				</thead>
				<tbody>

					<%
					for (Member m: list) {
					%>

					<tr>
						
						<td><%=m.getMember_id()%></td>
						<td><%=m.getName()%></td>
						<td><%=m.getEmail()%></td>
						<td><%=m.getPhone()%></td>
						<td><%=m.getAddress()%></td>
						<td><%=m.getSports_name()%></td>
						<td><%=m.getPlan_name()%></td>
						<td><%=m.getDate()%></td>
					</tr>

					<%
					}
					%>

				</tbody>

			</table>
		
		<%
		}
		%>

	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>

<%} %>
</body>
</html>