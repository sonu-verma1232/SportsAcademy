<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="sportsacademy.beans.*" %>
    <%@page import="sportsacademy.dao.*" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notices</title>
<%@include file="/common/common_css.html" %>
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

	<span style="font-size: 25px;"><a
		href="/SportsAcademy/admin/admin_home.jsp"
		style="color: blue; text-decoration: none;"><i class="fa fa-home"
			style="color: blue;"></i>Home</a></span>
	<h1 style="text-align: center;">All Plan</h1>

	<%
   AdminDao dao = new AdminDao();
   ArrayList<Notice> list = dao.viewNotices();
   int length = list.size();
%>

	<div class="container">
		<!--  style="overflow: scroll;" -->

		<%
	if (length == 0) {
	%>
		<h2>No notice available at Present !!!</h2>
		<%
		} else {
		%>
		<table class="table table-striped table-bordered bordered dark my-4"
			style="text-align: center">

			<thead class="table-dark table-active">
				<tr>
					<th>Id</th>
					<th>Content</th>
					<th>Date</th>
				</tr>
			</thead>
			<tbody>

				<%
					for (Notice n: list) {
					%>

				<tr>
					<td><%=n.getId()%></td>
					<td><%=n.getContent()%></td>
					<td><%=n.getDate()%></td>
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


	<%}%>



</body>
</html>