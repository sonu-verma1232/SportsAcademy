<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="sportsacademy.beans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Info</title>
</head>
<body>

<h1>Fetching the Data form book page</h1>

<%

String nm = request.getParameter("name");
String au = request.getParameter("author");
String pr = request.getParameter("price");

System.out.println("Book name is "+nm+" and author of this book is "+au+" and price is "+pr);

%>

<jsp:useBean id="bk" class="sportsacademy.beans.Book"></jsp:useBean>

<jsp:setProperty property="bookname" name="bk" value="<%=nm %>"/>
<jsp:setProperty property="authorname" name="bk" value="<%=au %>"/>
<jsp:setProperty property="bookprice" name="bk" value="<%=pr %>"/>


<h2>
Book Name : <jsp:getProperty property="bookname" name="bk"/>
</h2>

<h2>
Author Name : <jsp:getProperty property="authorname" name="bk"/>
</h2>

<h2>
Book Price : <jsp:getProperty property="bookprice" name="bk"/>
</h2>



</body>
</html>