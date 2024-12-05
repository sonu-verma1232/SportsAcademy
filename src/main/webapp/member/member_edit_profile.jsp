<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="sportsacademy.beans.*" %>
    <%@page import="sportsacademy.dao.*" %>
     <%@include file="/common/common_css.html" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Member Edit Profile</title>

<style type="text/css">

.gradient-custom {
/* fallback for old browsers */
background: #f6d365;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right bottom, rgba(246, 211, 101, 1), rgba(253, 160, 133, 1));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right bottom, rgba(246, 211, 101, 1), rgba(253, 160, 133, 1))
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
String memberId = (String)session.getAttribute("key");
String userRole = (String)session.getAttribute("role");

if(memberId==null || session.isNew())
{
	request.setAttribute("message", "Unauthorised Access");
	RequestDispatcher rd = request.getRequestDispatcher("/member/member_login.jsp");
	rd.forward(request, response);
}
else
{
	MemberDao dao = new MemberDao();
	Member m = dao.viewProfile(memberId);
%>

<%@include file="/member/member_header.html" %>

<div class="container-fluid bg-warning-subtle text-center">
 <h1>Hello <%=memberId %></h1>

</div>

<!--edit profile code start -->
<form action="/SportsAcademy/EditProfile" method="post">
<section class="vh-100" style="background-color: #f4f5f7;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-lg-6 mb-4 mb-lg-0">
        <div class="card mb-3" style="border-radius: .5rem;">
          <div class="row g-0">
            <div class="col-md-4 gradient-custom text-center text-white"
              style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;">
              <img src="https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png"
                alt="Avatar" class="img-fluid my-5" style="width: 80px;" />
              <h5>Hello, <%=m.getName() %></h5>
              <p>Your Plan is <%=m.getPlan_name() %></p>
              <p>Your Sports <%=m.getSports_name() %></p>
<!--               <i class="far fa-edit mb-5"></i>    --> 
           </div>
            <div class="col-md-8">
              <div class="card-body p-4">
                <h6>About You</h6>
                <hr class="mt-0 mb-4">
                <div class="row pt-1">
                  <div class="col-6 mb-3">
                    <h6>Email</h6>
                    <p class="text-muted">
                    <input type="email" class="form-control" name="email" required="required" value="<%=m.getEmail() %>"></p>
                  </div>
                  <div class="col-6 mb-3">
                    <h6>Phone</h6>
                    <p class="text-muted">
                    <input type="tel" class="form-control" name="phone" required="required" value="<%=m.getPhone() %>"></p>
                  </div>
                </div>
                <h6>Address</h6>
                <hr class="mt-0 mb-4">
                <div class="row pt-1">
                  
                  <div class="mb-3">
                    
                    <p class="text-muted">
                    <textarea rows="2" cols="" class="form-control" name="address" required="required"><%=m.getAddress() %></textarea>
                    </p>
                  </div>
                </div>
                
                <div class="text-center mb-3">
                <button class="btn btn-danger">Submit</button>
                </div>
                
                <!-- <div class="d-flex justify-content-start">
                  <a href="#!"><i class="fab fa-facebook-f fa-lg me-3"></i></a>
                  <a href="#!"><i class="fab fa-twitter fa-lg me-3"></i></a>
                  <a href="#!"><i class="fab fa-instagram fa-lg"></i></a>
                </div> -->
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</form>

<!--edit profile code end -->

<%} %>

<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>