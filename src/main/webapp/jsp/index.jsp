<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="sportsacademy.beans.*"%>
<%@page import="sportsacademy.dao.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Sports Academy</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

<%@include file="/common/common_css.html"%>

<style type="text/css">
.w-100 {
	height: 82.3vh;
}
</style>

<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");//HTTP 1.1
response.setHeader("Pragma", "no-cache"); //HTTP 1.0
response.setDateHeader("Expires", 0); //prevents caching at theproxyserver
%>

</head>
<body style="margin: 0px;">

	<%
	AdminDao dao = new AdminDao();
	%>

	<jsp:useBean id="slogan" class="sportsacademy.beans.Slogan"
		scope="application"></jsp:useBean>

	<jsp:setProperty property="tagline" name="slogan"
		value="Spread the Joy Of Playing" />

	<%@include file="/html/header.html"%>

	<div style="width: 100%; height: 60px; background-color: cyan">
		<h2 style="text-align: center; color: red; margin: 0px;">
			Sports Academy welcomes you !<jsp:getProperty property="tagline"
				name="slogan" /></h2>
	</div>



	<div
		style="width: 20%; height: 1300px; background-color: skyblue; float: left">

		<div style="margin-top: 3%; margin-buttom: 30%; margin-left: 2%">
			<h2 style="text-align: center; margin-bottom: 30px;">Notices</h2>

			<%
			ArrayList<Notice> noticeList = dao.viewNotices();
			if (noticeList.size() == 0) {
			%>
			<p>Soon notices will be seen here</p>

			<%
			} else {
			for (Notice n : noticeList) {
			%>

			<%-- 	<marquee onmouseover="this.stop()" onmouseout="this.start()"><p style="font-family: cursive;;color: red; font-size: large;"><%=n.getContent() %></p></marquee> --%>

			<marquee onmouseover="this.stop()" onmouseout="this.start()"
				direction="up" scrolldelay="180" height="70px">
				<p style="font-family: cursive; color: red; font-size: large;"><%=n.getContent()%></p>
			</marquee>

			<%
			}
			}
			%>
		</div>
	</div>


	<div
		style="width: 80%; height: 1300px; background-color: pink; float: left">
		<div
			style="width: 100%; height: 300px; background-color: blanchedalmond;">
			<img alt="" src="/SportsAcademy/images/cricketplaying.webp"
				style="width: 30%; height: 250px; margin-left: 2.2%; margin-top: 2%; border: 3px solid red; border-radius: 0px 25px 0px 25px;">
			<img alt="" src="/SportsAcademy/images/football.jpeg"
				style="width: 30%; height: 250px; margin-left: 2.2%; margin-top: 2%; border: 3px solid red; border-radius: 0px 25px 0px 25px;">
			<img alt="" src="/SportsAcademy/images/tabletanis.webp"
				style="width: 30%; height: 250px; margin-left: 2.2%; margin-top: 2%; border: 3px solid red; border-radius: 0px 25px 0px 25px;">
		</div>


		<!-- Carousel code start from here -->


		<div id="carouselExampleCaptions" class="carousel slide">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="/SportsAcademy/images/sports.jpeg" class="d-block w-100"
						alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>Welcome to the team!</h5>
						<p>You've taken an incredible step towards a healthier and
							more enjoyable lifestyle by joining our sports academy. Whether
							you're here to get fit, make new friends, or simply have fun,
							remember that every effort you put in counts. You're not just
							improving your physical health but also boosting your mental
							well-being.</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="/SportsAcademy/images/hockey.jpg" class="d-block w-100"
						alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>Stay motivated, stay positive, and let's get moving!</h5>
						<p>Embrace every challenge with a positive mindset and
							celebrate each small victory along the way. You're here to push
							your limits, to grow, and to enjoy every moment of the journey.
							Let's make this experience unforgettable and full of
							achievements.</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="/SportsAcademy/images/pv.webp" class="d-block w-100"
						alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h5>Here's to a new chapter of energy, fitness, and fun!</h5>
						<p>This line celebrates the excitement of starting a new
							journey at the sports academy. It emphasizes the fresh, positive
							energy that comes with embracing fitness and enjoying new
							activities. It's about making fitness enjoyable and transforming
							it into a fun, engaging part of your life.</p>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>


		<!-- Carousel code end here -->




		<!-- feedback code start -->
		<div class="d-flex gap-5 flex-wrap" style="clear: both">

			<%
			ArrayList<FeedBack> list = dao.viewFeedback();
			for (FeedBack f : list) {
			%>

			<div class="card my-4 mx-4" style="width: 20rem;">
				<div class="card-body">
					<h5 class="card-title">
						Posted By :
						<%=f.getName()%></h5>
					<h6 class="card-subtitle mb-2 text-body-secondary">
						Rating :
						<%=f.getRating()%></h6>
					<p class="card-text">
						Review :
						<%=f.getRemark()%></p>
					<!-- <a href="#" class="card-link">Card link</a>
    <a href="#" class="card-link">Another link</a> -->
				</div>
			</div>

			<%
			}
			%>

		</div>
		<!-- feedback code end  -->

	</div>

	<div
		style="width: 100%; height: 40px; background-color: black; color: white; clear: both">
		<span style="font-size: 18px; font-family: cursive; margin-left: 45%;">&copy;
			Created by Sonu Verma &hearts;</span>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>

</body>
</html>