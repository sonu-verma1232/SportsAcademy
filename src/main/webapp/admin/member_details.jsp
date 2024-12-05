<%@page import="sportsacademy.beans.*"%>
<%@page import="sportsacademy.dao.*"%>
<%@page import="java.util.*"%>



<%
String pname = request.getParameter("plName");

AdminDao dao = new AdminDao();

ArrayList<Member> memberList = dao.planWiseMember(pname);
%>



<%
if (memberList.size() == 0) {
%>
<h1 style="margin-left: 25%">No member has choosen this plan!!</h1>
<%
} else {
%>


<table class="table table-striped table-bordered bordered dark"
	style="text-align: center;">

	<thead class="table-dark table-active">
		<tr>
			<th>Name</th>
			<th>Email</th>
			<th>Phone Number</th>
			<th>Sports Name</th>
		</tr>
	</thead>
	<tbody>

		<%
		for (Member m : memberList) {
		%>

		<tr>
			<td><%=m.getName()%></td>
			<td><%=m.getEmail()%></td>
			<td><%=m.getPhone()%></td>
			<td><%=m.getSports_name()%></td>
		</tr>

		<%
		}
		%>

	</tbody>

</table>
<%
}
%>


