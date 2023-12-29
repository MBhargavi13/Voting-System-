<%@page import="com.govt.voting.entity.Admin"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.nav{
		background-color:#2B9348;
		color: white;
		display: block;
		border-radius:10px;
		box-shadow:2px 2px 10px black;
	}

.nav ul {
	list-style: none;
	display: inline-flex;
	font-size: 35px;
}

.nav ul li {
	padding: 15px;
}

.nav ul li a:hover {
	color:#2B9348;
	background-color:  white;
	padding:10px;
	border-radius:10px;
	box-shadow:2px 2px 10px black;
	}
a {
	text-decoration: none;
	color: white;
}
</style>
</head>
<body>
	<div class="nav">
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="viewAllAdmins">View Admins</a></li>
			<li><a href="viewAllVoters">View Voters</a></li>
			<li><a href="viewAllCandidates">View Candidates</a></li>
			<li><a href="index.jsp">Logout</a></li>
		</ul>
	</div>
	<br>
	<div style="border: 2px solid green;border-radius:10px;">
		<center>
			<h1>
				<u>ALL ADMINS DETAILS</u>
			</h1>
			<br>
			<%
			List<Admin> alist = (List) request.getAttribute("allAdmins");
			%>
			<table border="3" cellspacing="0px" cellpadding="10px"style="box-shadow:2px 2px 10px black;border-radius:10px";>
				<tr align="center" style="background-color:#2B9348;color:white;padding:10px;">
					<th>Email</th>
					<th>MobileNo</th>
					<th>Password</th>
					<th>UserName</th>
				</tr>
				<%
				for (Admin add : alist) {
				%>
				<tr align="center">
					<td><%=add.getEmail_id()%></td>
					<td><%=add.getMobile_no()%></td>
					<td><%=add.getPassword()%></td>
					<td><%=add.getUser_name()%></td>

				</tr>
				<%
				}
				%>
			</table>
		</center>
	</div>
</body>
</html>