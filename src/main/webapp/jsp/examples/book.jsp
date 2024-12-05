<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@include file="/common/common_css.html" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book</title>
</head>
<body>

<div class="container w-25 mt-5 border border-dark rounded">

<form action="/SportsAcademy/jsp/examples/book_info.jsp" method="post">

<div class="my-4">
<label for="bookname" class="form-label">Book Name</label>
<input type="text" placeholder="Enter Book Name" class="form-control" name="name">
</div>

<div class="mb-4">
<label for="authorname" class="form-label">Author Name</label>
<input type="text" placeholder="Enter Author Name"  class="form-control" name="author">
</div>

<div class="mb-4">
<label for="price" class="form-label">Book Price</label>
<input type="number" class="form-control" placeholder="Enter Book Price" name="price">
</div>

<div class="my-4 text-center">
<button type="submit" class="btn btn-primary">Submit</button>
</div>

</form>

</div>

</body>
</html>