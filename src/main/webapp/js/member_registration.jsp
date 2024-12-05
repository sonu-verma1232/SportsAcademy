<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Form</title>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<%@include file="/common/common_css.html"%>



<style type="text/css">

img {
	margin-top: 10%;
	border-radius: 5%;
	margin-left: 0%;
	width: 100%;
	height: 90vh;
	box-shadow: 5px 5px 10px blanchedalmond, -5px -5px 10px blanchedalmond;
}
</style>


<script>
	function checkSports() {
		/* alert("In function") */

		var sportsArray = document.getElementsByName("sports") // returns array of thar element

		var flag = 0
		for (var i = 0; i < sportsArray.length; i++) {
			if (sportsArray[i].checked == true) {
				flag = 1
				break
			}
		}
		if (flag == 0) {
			alert("Please select atleast one sport for registration")
			return false
		}
		return true
	}
</script>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$("#member_id").change(function() {
			//alert("hello")
			console.log($(this).val());
			var mem_id = $(this).val();//it will fetch the value from input text
			$.ajax({
				url : "/SportsAcademy/memberRegistration",
				type : "GET",
				data : {
					'mid' : mem_id
				},
				//dataType: 'json',
				success : function(response_text) {
					//alert(response_text)
					if (response_text != "") {

						$("#ajaxmsg").text(response_text)
						$("#member_id").val("") // to clear data in input field

					} else {
						$("#ajaxmsg").text("")
					}
				}

			});
		});
	})
</script>


<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at theproxyserver
%>



</head>


<body>




	<%
	String msg = (String) request.getAttribute("message");
	%>

	<div class="container d-flex">

		<div style="width: 40%;">

			<img alt="" src="/SportsAcademy/images/register.jpg">

		</div>
		<div style="width: 60%;">


			<%
			if (msg != null) {
			%>

			<div style="margin-left: 35%; margin-top: 1%"
				class="alert alert-danger w-50 alert-dismissible fade show"
				role="alert">
				<strong><%=msg%></strong>
				<button type="button" class="btn-close" data-bs-dismiss="alert"
					aria-label="Close"></button>
			</div>

			<%
			}
			%>



			<h2 style="margin-left: 40%; margin-top: 1%; font-family: cursive;">
				<b>Registration Form</b>
			</h2>

			<div style="width: 70%; margin-left: 25%">

				<form action="/SportsAcademy/memberRegistration" method="post"
					onsubmit="return checkSports()" class="needs-validation" novalidate> 

					<div class="mt-1 mb-2">
						<label for="id" class="form-label">Id</label> <input type="text"
							name="id" id="member_id" placeholder="Enter Id"
							class="form-control" required="required"> <span
							id="ajaxmsg" style="color: red; font-size: 14px;"></span>
							<div class="invalid-feedback">Please create your ID.
					</div>
					</div>

					<div class="mb-2">
						<label for="pass" class="form-label">Password</label> <input
							type="password" name="pass" placeholder="Enter Password"
							class="form-control" required="required" >
							<div class="invalid-feedback">Please create your password.
					</div>
					</div>

					<div class="mb-2">
						<label for="name" class="form-label">Name</label> <input
							type="text" name="name" placeholder="Enter Your Name"
							class="form-control" required="required" oninput="validateInput(event)">
							<div class="invalid-feedback">Please enter your name.
					</div>
					</div>

					<div class="mb-2">
						<label for="email" class="form-label">Email</label> <input
							type="email" name="email" placeholder="Enter Your Email"
							class="form-control" required="required">
						<div class="invalid-feedback">Please enter your email.
					</div>	
					</div>

					<div class="mb-2">
						<label for="phone" class="form-label">Phone</label> <input
							type="text" name="phone" placeholder="Enter Your Phone"
							class="form-control" required="required" id="userPhone" maxlength="10">
							<div class="invalid-feedback">Please enter your phone number.
					</div>
					</div>

					<div class="mb-2">
						<label for="address" class="form-label">Address</label>
						<textarea rows="2" cols="20" name="address"
							placeholder="Enter Your Address" required="required"
							class="form-control"></textarea>
							<div class="invalid-feedback">Please enter your address.
					</div>
					</div>

					<div class="mb-2">

						<!-- checkbox button code start -->
						<label for="sport" class="form-label">Select Sport</label>
						<div class="mb-2 d-flex">

							<div class="form-check">
								<input type="checkbox" class="form-check-input" name="sports"
									value="Cricket"> <label class="form-check-label"
									for="cricket">Cricket</label>
							</div>
							<div class="form-check ms-5">
								<input type="checkbox" class="form-check-input" name="sports"
									value="Hockey"> <label class="form-check-label"
									for="hockey">Hockey</label>
							</div>
							<div class="form-check ms-5">
								<input type="checkbox" class="form-check-input" name="sports"
									value="Badminton"> <label class="form-check-label"
									for="badminton">Badminton</label>
							</div>
							<div class="form-check ms-5">
								<input type="checkbox" class="form-check-input" name="sports"
									value="Table Tanis"> <label class="form-check-label"
									for="tableTanis">Table Tannis</label>
							</div>
						</div>

						<!-- code end -->

					</div>

					<div class="mb-3">
						<label for="plan" class="form-label">Plan Name</label> <input
							type="text" name="plan" placeholder="Enter Plan Name"
							class="form-control" required="required">
							<div class="invalid-feedback">Please enter your plan name.
					</div>
					</div>

					<div class="mb-3">
						<button type="reset" class="btn btn-primary"
							style="margin-left: 20%">Reset</button>
						<button type="submit" class="btn btn-primary"
							style="margin-left: 30%">Submit</button>
					</div>
				</form>
			</div>

		</div>

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



	<script>
		document.getElementById('userPhone')
				.addEventListener(
						'keydown',
						function(event) {
							// Allow only digits and backspace/delete keys
							if (!(event.key === 'Backspace'
									|| event.key === 'Delete' || /\d/
									.test(event.key))) {
								/* alert("only digits are allowed") */
								Swal.fire("Only digits are allowed");
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