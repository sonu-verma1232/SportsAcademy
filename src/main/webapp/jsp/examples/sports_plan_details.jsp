<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sports Plan Details</title>
</head>
<body>


<jsp:useBean id="sport" class="sportsacademy.beans.SportPlan"></jsp:useBean>
<jsp:setProperty property="*" name="sport"/>

<h2>
Plan ID : <jsp:getProperty property="planid" name="sport"/>
</h2>

<h2>
Plan Name : <jsp:getProperty property="planname" name="sport"/>
</h2>

<h2>
Duration : <jsp:getProperty property="duration" name="sport"/>
</h2>

<h2>
Charges : <jsp:getProperty property="charge" name="sport"/>
</h2>

<h2>
Facilities : <jsp:getProperty property="facility" name="sport"/>
</h2>

</body>
</html>