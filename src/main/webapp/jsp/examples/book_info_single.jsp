<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Info</title>
</head>
<body>
<h1>Fetching data from book form</h1>

<jsp:useBean id="bk" class="sportsacademy.beans.Book"></jsp:useBean>
<jsp:setProperty property="*" name="bk"/>

<h2>
BookName :<jsp:getProperty property="bookname" name="bk"/>
</h2>

<h2>
AuthorName :<jsp:getProperty property="authorname" name="bk"/>
</h2>

<h2>
Price : <jsp:getProperty property="bookprice" name="bk"/>
</h2>

</body>
</html>