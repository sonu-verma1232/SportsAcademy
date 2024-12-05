<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Book_Single</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>

	<div class="container w-25 border mt-5">
		<form action="/SportsAcademy/jsp/examples/book_info_single.jsp" method="post">

			<div class="my-4">
			    <label for="book" class="form-label">Book Name</label>
				<input type="text" name="bookname" class="form-control"
					placeholder="Enter Book Name"> 
			</div>

			<div class="mb-4">
			    <label for="author" class="form-label">Author Name</label>
				<input type="text" name="authorname" class="form-control"
					placeholder="Enter Author Name"> 
			</div>

			<div class="mb-4">
			    <label for="price" class="form-label">Price</label>
				<input type="number" class="form-control" name="bookprice"
					placeholder="Enter Price"> 
			</div>

			<div class="text-center mb-4">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>

		</form>

	</div>

</body>
</html>