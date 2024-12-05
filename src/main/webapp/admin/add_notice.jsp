<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notice</title>
<%@include file="/common/common_css.html"%>

<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");//HTTP 1.1
response.setHeader("Pragma", "no-cache"); //HTTP 1.0
response.setDateHeader("Expires", 0); //prevents caching at theproxyserver
%>

</head>
<body>

	<%
	String adminId = (String) session.getAttribute("sessionKey");
	String userRole = (String) session.getAttribute("role");

	if (adminId == null || session.isNew()) {

		request.setAttribute("message", "Unauthorised Access");
		RequestDispatcher rd = request.getRequestDispatcher("/admin/admin_login.jsp");
		rd.forward(request, response);

	} else {
	%>

	<%
	String msg = (String) request.getAttribute("message");
	if (msg != null) {
	%>
	<div class="alert alert-danger alert-dismissible fade show w-25 mt-3"
		role="alert" style="margin-left: 37.5%;">
		<strong><%=msg%>!</strong>
		<button type="button" class="btn-close" data-bs-dismiss="alert"
			aria-label="Close"></button>
	</div>
	<%
	}
	%>

	<div class="container w-25 border border-black my-5 rounded">
		<h3 class="text-center my-4">Add Notice</h3>
		<form action="/SportsAcademy/AddNotice" method="post">
			<div class="mb-4">
				<label class="form-label">Content</label>
				<textarea rows="2" cols="" placeholder="Enter Notice"
					class="form-control" name="notice" required="required"></textarea>
			</div>
			<div class="text-center my-4">
				<button class="btn btn-primary">Submit</button>
			</div>
		</form>

	</div>
	<%
	}
	%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>

</body>
</html>