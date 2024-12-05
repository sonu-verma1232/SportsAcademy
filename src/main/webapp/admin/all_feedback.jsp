<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="sportsacademy.dao.*"%>
<%@page import="sportsacademy.beans.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Feedbacks</title>
<%@include file="/common/common_css.html"%>
<style type="text/css">

.container-fluid{
	display: flex;
	flex-wrap: wrap;
}

.card{
background: linear-gradient(90deg, #00C9FF 0%, #92FE9D 100%);
}


body {
	background-image: repeating-linear-gradient(315deg, #00FFFF2E 92%, #073AFF00 100%),
		repeating-radial-gradient(75% 75% at 238% 218%, #00FFFF12 30%, #073AFF14
		39%), linear-gradient(3deg, #00FFC7FF 49%, #073AFF00 100%),
		radial-gradient(99% 99% at 21% 78%, #7B00FFFF 0%, #073AFF00 100%),
		radial-gradient(160% 154% at 711px -303px, #2000FFFF 0%, #073AFFFF 100%);
}
</style>

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


	<span style="font-size: 20px;"><a
		href="/SportsAcademy/admin/admin_home.jsp"
		style="color: silver; text-decoration: none;"><i
			class="fa fa-home" style="color: silver;"></i>Home</a></span>
	<h1 style="text-align: center; font-family: cursive;">All Feedbacks</h1>

	<%
	AdminDao dao = new AdminDao();
	ArrayList<FeedBack> feedbackList = dao.allFeedback();
	%>

	<%
	if (feedbackList.size() == 0) {
	%>
	<h2>No Feedbacks are available at Present!!</h2>
	<%
	} else {
	%>
<form action="">
	<div class="container-fluid" style="overflow: scroll; height: 649px;">
		<%
		for (FeedBack f : feedbackList) {
		%>
		
		<div class="card my-4 mx-5 border border-dark bg-primary-subtle"
			style="width: 26%;box-shadow: 6px 6px 5px white">
			<div class="card-body">
				<h5 class="card-title"><%=f.getId()%>. Name: <%=f.getName()%></h5>
				<h6 class="card-subtitle mb-2 text-muted">
					Email: <%=f.getEmail()%></h6>
				<h6 class="card-subtitle mb-2 text-muted">
					Rating: <%=f.getRating()%></h6>
				<p class="card-text">
					Remark: <%=f.getRemark()%><br>
					Date: <%=f.getDate()%></p>
			</div>

		</div>
        
		<%-- <div>
      <p><%=f.getId()%>.  <b>Name: <%=f.getName() %></b><br>
      <b>Email: </b><%=f.getEmail() %><br><b>Rating: </b><%=f.getRating() %><br><b>Remark: </b><%=f.getRemark() %><br>
      <b>Date: </b><%=f.getDate() %>
      </p>
</div> --%>

		<%} %>
		
	</div>
</form>
	<%}	 %>
<%} %>
</body>
</html>