<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="/common/common_css.html" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>


<style type="text/css">

.task-container{
width: 25%;
height: 250px;
}


img{
width: 100%;
height: 100%;
border-radius: 5px;
transition:transform 0.5s;
}

img:hover{
transform:scale(1.1);
}
 
body{
background-image: linear-gradient(to right bottom, #E02F94 , #6D97E5);
}


</style>

<script type="text/javascript">

function show(){
//	alert("In show");
 
//  window.location.href="/SportsAcademy/admin/all_contact.jsp"
    
//    location.href="/SportsAcademy/admin/all_contact.jsp"
    
    // both are same
    // window is the default implicit object of javascript
    
    location.href = "/SportsAcademy/AdminLogout"
}

</script>


<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at theproxyserver
%>


</head>
<body>

<%
String adminId = (String)session.getAttribute("sessionKey");
String userRole = (String)session.getAttribute("role");

if(adminId==null || session.isNew()){
	
	request.setAttribute("message", "Unauthorised Access");
	RequestDispatcher rd = request.getRequestDispatcher("/admin/admin_login.jsp");
	rd.forward(request, response);
	
}
else
{
	

%>


<div class="container-fluid">
<h1 style="margin-left:35%; text-shadow: 10px 10px 5px #6D97E5;font-family: cursive; display: inline;"><b><i>Admin Dashboard</i></b></h1>
<button type="button" class="btn btn-danger" style="margin-left: 35%;" onclick="show()">LogOut</button>
</div>

<div style="margin: 2%;gap:100px;" class="d-flex  justify-content-center align-item-center flex-wrap">

<div class="task-container">

<a href="/SportsAcademy/admin/all_contact.jsp"><img alt="ContactUs" src="/SportsAcademy/images/contactall.jpg"></a>

</div>

<div class="task-container">

<a href="/SportsAcademy/admin/all_feedback.jsp"><img alt="Feedback" src="/SportsAcademy/images/feedbackall.jpg"></a>

</div>


<div class="task-container" >

<a href="/SportsAcademy/admin/all_members.jsp"><img alt="AllMember" src="/SportsAcademy/images/memberall.jpg"></a>

</div>


<div class="task-container">

<a href="/SportsAcademy/admin/all_plan.jsp"><img alt="AllPlans" src="/SportsAcademy/images/ViewPlans.png"></a>

</div>

<div class="task-container" >

<a href="/SportsAcademy/admin/all_Notices.jsp"><img alt="AllNotices" src="/SportsAcademy/images/notices.png"></a>

</div>

<div class="task-container ">

<a href="/SportsAcademy/admin/add_plan.jsp"><img alt="AddPlans" src="/SportsAcademy/images/EditPlans.png"></a>

</div>

<div class="task-container" >

<a href="/SportsAcademy/admin/add_notice.jsp"><img alt="AddNotices" src="/SportsAcademy/images/addNotice.webp"></a>

</div>

<div class="task-container" >

<a href="/SportsAcademy/admin/plan_wise_member.jsp"><img alt="plan-wise-member" src="/SportsAcademy/images/plan_wise.jpg"></a>

</div>

</div>



<%} %>

</body>
</html>