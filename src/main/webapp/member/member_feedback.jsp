<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback</title>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<%@include file="/common/common_css.html"%>

<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");//HTTP 1.1
response.setHeader("Pragma", "no-cache"); //HTTP 1.0
response.setDateHeader("Expires", 0); //prevents caching at theproxyserver
%>

<style type="text/css">

.invalid-feedback{
color: white;
font-weight: bold;
}

</style>

</head>
<body
	style="background-image: url('/SportsAcademy/images/feedbackbackground.jpg'); background-size: cover;">
	<%
String memberId = (String)session.getAttribute("key");
String userRole = (String)session.getAttribute("role");

if(memberId==null || session.isNew())
{
	request.setAttribute("message", "Unauthorised Access");
	RequestDispatcher rd = request.getRequestDispatcher("/member/member_login.jsp");
	rd.forward(request, response);
}
else
{
	%>
}
	
	
	<%
	String msg = (String) request.getAttribute("message");
	%>
	<%@include file="/member/member_header.html"%>

	<%
	if (msg != null) {
	%>

	<div style="margin-left: 40%; margin-top: 1%"
		class="alert alert-danger w-25 alert-dismissible fade show"
		role="alert">
		<strong><%=msg%></strong>
		<button type="button" class="btn-close" data-bs-dismiss="alert"
			aria-label="Close"></button>
	</div>

	<%
	}
	%>

	<div class="container my-4 ">
		<h1
			style="text-align: center; font-family: cursive; font-weight: bold;">Provide
			your feedback, It is valuable for us!!!</h1>
	</div>

	<div class="container " style="width: 30%; margin-top: 9%">

		<form action="/SportsAcademy/MemberFeedback" method="post"
			style="margin: 9.5%; margin-right: 1%;" class="needs-validation"
			novalidate>
			<div class="input-group input-group-lg mb-4">
				<span class="input-group-text bg-info"><i
					class="far fa-user-circle"></i></span> <input type="text" name="name"
					class="form-control bg-info-subtle" placeholder="Enter Your Name"
					required="required" oninput="validateInput(event)">
				<div class="invalid-feedback">Please provide your name.</div>
			</div>

			<div class="input-group input-group-lg mb-4">
				<span class="input-group-text bg-info"><i
					class="far fa-envelope"></i></span> <input type="email" name="email"
					class="form-control bg-info-subtle" placeholder="Enter Your Email"
					required="required">
				<div class="invalid-feedback">Please provide your email.</div>
			</div>

			<div class="input-group input-group-lg mb-4">
				<label class="input-group-text bg-info" for="rating">Rate Us</label>
				<select class="form-select bg-info-subtle" required="required"
					name="rating">
					<option value="">Choose...</option>
					<option value="1">&#11088</option>
					<option value="2">&#11088 &#11088</option>
					<option value="3">&#11088 &#11088 &#11088</option>
					<option value="4">&#11088 &#11088 &#11088 &#11088</option>
					<option value="5">&#x2B50 &#x2B50 &#x2B50 &#x2B50 &#x2B50</option>
				</select>
			</div>


			<div class="input-group input-group-lg mb-4">
				<textarea rows="4" cols="60"
					class="form-contol bg-info-subtle rounded" name="remark"
					placeholder="Leave a comment" required="required"></textarea>
				<div class="invalid-feedback">Please provide your experience.
				</div>
			</div>

			<div class="text-center ">
				<button type="submit" class="btn btn-lg btn-primary">
					<b>Submit</b>
				</button>
			</div>

		</form>

	</div>

	<script>
		function validateInput(event) {
			const input = event.target.value;
			const regex = /^[a-zA-Z ]*$/; // Regular expression to match only characters
			if (!regex.test(input)) {
				// If input contains anything other than characters, remove them
				event.target.value = input.replace(/[^a-zA-Z]/g, '');
				// alert("only aplhabets allowed")
				Swal.fire("Only Alphabets are allowed");
			}
		}
	</script>


	<script type="" src="/SportsAcademy/js/custom_validation.js"></script>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>

<%} %>
</body>
</html>