<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="sportsacademy.dao.*"%>
<%@page import="sportsacademy.beans.*"%>
<%@page import="java.util.*"%>
<%@include file="/common/common_css.html"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>All Contact</title>



<style>
body {
	 /* background-image: linear-gradient(to right bottom, #E02F94, #6D97E5);  */
	 background: linear-gradient(90deg, #efd5ff 0%, #515ada 100%);
	
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
	<h1 style="text-align: center;">All Contact List</h1>
	<%
	AdminDao dao = new AdminDao();
	ArrayList<Contact> contactList = dao.allContacts(); // calling method of dao Admindao class

	int length = contactList.size(); // it will count total element
	%>

	<div class="container">
		<!--  style="overflow: scroll;" -->

		<%
	if (length == 0) {
	%>
		<h2>No contacts available at Present !!!</h2>
		<%
		} else {
		%>
		<form method="post" action="/SportsAcademy/DeleteContact">
			<table class="table table-striped table-bordered bordered dark"
				style="text-align: center;">

				<thead class="table-dark table-active">
					<tr>
						<th>Select</th>
						<th>Serial Number</th>
						<th>Name</th>
						<th>Email</th>
						<th>Phone Number</th>
						<th>User Question</th>
					</tr>
				</thead>
				<tbody>

					<%
					for (Contact c : contactList) {
					%>

					<tr>
						<td><input type="checkbox" class="form-check-input" name="chk"
							value="<%=c.getId()%>"></td>
						<td><%=c.getId()%></td>
						<td><%=c.getName()%></td>
						<td><%=c.getEmail()%></td>
						<td><%=c.getPhone()%></td>
						<td><%=c.getQuestion()%></td>
					</tr>

					<%
					}
					%>

				</tbody>

			</table>

			<div class="text-center">
				<button class="btn btn-danger">Delete</button>
			</div>

		</form>
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