<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="/common/common_css.html"%>



</head>
<body>

	<%
	String name[] = { "Scott", "Smith", "Joy" };
	String[] course = { "Core JAVA", "Advance JAVA", "Spring Boot" };
	%>

	<table class="table">

		<thead class="table-info table-active">
			<tr>
				<th>Student Name</th>
				<th>Course Name</th>
			</tr>
		</thead>

		<tbody class="table-primary">

			<%
			for (int i = 0; i < name.length; i++) {
			%>
			<tr >
				<td><%=name[i]%></td>
				<td><%=course[i]%></td>
			</tr>

			<%
			}
			%>

		</tbody>

	</table>

	<select class="form-select w-25">
		<option value="">Select course</option>

		<%
		for (int i = 0; i < course.length; i++) {
		%>
		<option value="<%=course[i]%>"><%=course[i]%>
			<%
			}
			%>
		</option>
	</select>


	<select class="form-select w-25">
		<option value="">Select course</option>

		<%
		for (String cname : course) {
		%>
		<option value="<%=cname%>"><%=cname%>
			<%
			}
			%>
		</option>
	</select>



</body>
</html>