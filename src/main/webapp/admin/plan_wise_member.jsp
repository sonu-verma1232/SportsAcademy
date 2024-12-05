<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="sportsacademy.beans.*"%>
<%@page import="sportsacademy.dao.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Plan wise member</title>
<%@include file="/common/common_css.html"%>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
	

	$(document).ready(function(){
	    $("#planName").change(function(){
	      
	        console.log($(this).val());
	        var plValue = $(this).val();//it will fetch the value from input text
	        $.ajax({
	            url: "/SportsAcademy/admin/member_details.jsp",
	            type : "GET",
	            data:{
	                'plName': plValue
	            },
	            //dataType: 'json',
	            success: function(response_text){
	         /*      alert(response_text) */
	              if(response_text!="")
					{
						
						$("#ajaxDiv").html(response_text)
						$("#ajaxDiv").show()
					/* 	$("#member_id").val("")   */
						
					}
	              else{
	               /*   $("#ajaxmsg").html("")   */
	            	alert("No Data")
	              } 
	                }
	            

	            
	                });
	    });
	})
	
	
	</script>
	
	<%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");//HTTP 1.1
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
	response.setDateHeader("Expires", 0); //prevents caching at theproxyserver
	%>

</head>
<body>

	<%
	String adminId = (String) session.getAttribute("sessionKey");
	String userRole = (String) session.getAttribute("role");

	if (adminId == null || session.isNew()) {

		request.setAttribute("message", "Unauthorised Access");
		RequestDispatcher rd = request.getRequestDispatcher("/admin/admin_login.jsp");
		rd.forward(request, response);

	} else {
	%>

	<span style="font-size: 20px;"><a
		href="/SportsAcademy/admin/admin_home.jsp"
		style="color: blue; text-decoration: none;"><i class="fa fa-home"
			style="color: blue;"></i>Home</a></span>

	<%
	AdminDao dao = new AdminDao();
	ArrayList<Plan> planList = dao.viewPlans();
	int length = planList.size();
	%>
	
		<%
	if (length == 0) {
	%>
		<h2>No member available at Present !!!</h2>
		<%
		} else {
		%>



	<div class="container w-25">

		<div class="input-group mb-3">
			<label class="input-group-text" for="inputGroupSelect01">Plan
				Name</label> 
				<select class="form-select" id="planName">
				<option selected>Choose...</option>
				<%
				for (Plan p : planList) {
				%>

				<option value="<%= p.getPlanName()%>"><%=p.getPlanName()%></option>

				<%
				}
				%>

			</select>
		</div>

	</div>
	
	<div class="container" id="ajaxDiv" style="display: none;">
	
	
	
	
	</div>

<%} %>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>

	<%
	}
	%>
</body>
</html>