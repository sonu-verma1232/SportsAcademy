<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<%@include file="/common/common_css.html"%>

<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");//HTTP 1.1
response.setHeader("Pragma", "no-cache"); //HTTP 1.0
response.setDateHeader("Expires", 0); //prevents caching at theproxyserver
%>


<style type="text/css">
body {
	background-image: url("/SportsAcademy/images/login.jpg");
	background-size: cover;
}

.container {
	width: 25%;
}
</style>


</head>
<body>

	<%
	String msg = (String) request.getAttribute("message");
	%>

	<%@include file="/html/header.html"%>

	<%
	if (msg != null) {
	%>
	<div style="margin-left: 35%; margin-top: 1%"
		class="alert alert-warning w-25 alert-dismissible fade show"
		role="alert">
		<strong><%=msg%></strong>
		<button type="button" class="btn-close" data-bs-dismiss="alert"
			aria-label="Close"></button>
	</div>

	<%
	}
	%>

	<div class="container-fluid">
		<h1
			style="margin: 50px; margin-left: 70%; font-family: cursive; color: white; font-size: 50px; text-shadow: 10px 10px 5px lightblue">Login
			Here</h1>
	</div>

	<div class="container "
		style="border: 2px solid black; margin-left: 65%; box-shadow: 10px 10px 15px lightblue, -10px -10px 15px lightblue; border-radius: 8%">

		<form action="/SportsAcademy/MemberLogin" method="post"
			class="m-5 needs-validation" novalidate>

			<div class="form-floating my-4">
				<input type="text" class="form-control" placeholder="Enter Your ID"
					name="userID" required="required"> <label for="id">User
					ID</label>

				<div class="invalid-feedback">Please enter a user ID.</div>

			</div>

			<div class="form-floating mb-4">
				<input type="password" class="form-control"
					placeholder="Enter Your Password" name="userPass"
					required="required"> <label for="password">Password</label>

				<div class="invalid-feedback">Please enter a password.</div>

			</div>

			<div class="text-center mb-4">
				<button type="submit" class="btn btn-info">Submit</button>
			</div>

		</form>

	</div>

	<script src="/SportsAcademy/js/custom_validation.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>


</body>
</html>