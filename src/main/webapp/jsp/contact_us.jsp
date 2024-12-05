<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ContactUs</title>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<%@include file="/common/common_css.html"%>

<style type="text/css">
.contact-flex-div {
	width: 80%;
	height: 400px;
	/* background-color: aqua; */
	gap: 20px;
	justify-content: center;
	display: flex;
	margin: 100px;
}

.img-div {
	width: 40%;
	height: 450px;
}

.img-div img {
	width: 100%;
	height: 100%;
	box-shadow: 2px 2px 5px red, -2px -2px 5px red;
}

.contact-div {
	width: 40%;
	height: 500px;
	/* background-color: grey; */
}
</style>
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at theproxyserver
%>

</head>
<body class="bg-info">

	<%
	String msg = (String) request.getAttribute("message");
	%>

	<%@include file="/html/header.html"%>

	<div
		class="container-fluid bg-info d-flex gap-5 justify-content-center">

		<h2 style="text-align: center;">
			<i class="far fa-comment"></i>Feel free to contact Us.<i
				class="far fa-comment"></i>
		</h2>

		<h2>
			<i class="fas fa-phone-alt">1451637898</i>
		</h2>

	</div>

	<!-- contact form code -->

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

	<%-- <span><%=msg %></span> --%>

	<%
	}
	%>

	<div class="contact-flex-div">

		<div class="img-div">

			<!--image  -->

			<img alt="" src="/SportsAcademy/images/contact1.png"
				class="rounded-circle">

		</div>

		<div class="contact-div">

			<form action="/SportsAcademy/ContactUs" method="post"
				class="needs-validation" novalidate>
				<!-- novalidate -> it will override the default validation  -->

				<div class="mb-4">
					<label for="name" class="form-label">Your Name</label> <input
						type="text" placeholder="Enter Your Name" name="userName"
						required="required" class="form-control"
						oninput="validateInput(event)">

					<div class="invalid-feedback">Please provide your name here.
					</div>

				</div>

				<div class="mb-4">
					<label for="email" class="form-label">Your Email</label> <input
						type="email" placeholder="Enter Your Email" name="userEmail"
						required="required" class="form-control">

					<div class="invalid-feedback">Please provide your email here.
					</div>

				</div>

				<div class="mb-4">
					<label for="phone" class="form-label">Your Phone Number</label> <input
						type="text" placeholder="Enter Your Phone Number" name="userPhone"
						id="userPhone" maxlength="10" required="required"
						class="form-control">

					<div class="invalid-feedback">Please provide your phone
						number here.</div>

				</div>

				<div class="mb-4">
					<label for="question" class="form-label">Ask Your Question</label>
					<textarea rows="3" cols="20" class="form-control"
						name="userQuestion" placeholder="Enter Your Question Here"
						required="required"></textarea>

					<div class="invalid-feedback">Please provide your question
						here.</div>

				</div>

				<div class="text-center">
					<button class="btn btn-danger">Submit</button>
				</div>


			</form>



		</div>

	</div>


	<!-- contact form code end -->


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



	<script>
		document.getElementById('userPhone')
				.addEventListener(
						'keydown',
						function(event) {
							// Allow only digits and backspace/delete keys
							if (!(event.key === 'Backspace'
									|| event.key === 'Delete' || /\d/
									.test(event.key))) {
								alert("only digits are allowed")
								event.preventDefault();
							}
						});
	</script>




	<script type="" src="/SportsAcademy/js/custom_validation.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>

</body>
</html>