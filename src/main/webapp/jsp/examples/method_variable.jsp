<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%! String name = "Scott"; %>

<%! 
int show(int n1, int n2)
{
    System.out.println("Hello JSP Method");  // print on server console	
    // out.println("Hello JSP Method");
    int sum = n1+n2;
    return sum;
}
%>

<%

int add = show(3,5);   //method calling

out.println("Addition of two number is "+add);

out.println("<h1>Addition of two number is "+add+"</h1>");

%>

<h2>Using expression <%= add %></h2>

</body>
</html>