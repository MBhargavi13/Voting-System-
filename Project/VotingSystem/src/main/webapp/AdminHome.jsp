<%@page import="com.govt.voting.entity.Admin"%>
<%@page import="com.govt.voting.entity.Candidate"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>
<style type="text/css">
	.nav{
		background-color:#2B9348;
		color: white;
		border-radius:10px;
		display: block;
		box-shadow:2px 2px 10px black;
	}
	.nav ul{
	list-style: none;
	display: inline-flex;
	font-size: 35px;
	}
	.nav ul li{
	padding: 15px;
	}
	.nav ul li a:hover {
	color:#2B9348;
	background-color:  white;
	padding:10px;
	border-radius:10px;
	box-shadow:2px 2px 10px black;
	}
	a{
	text-decoration: none;
	color: white;
	}
	   .card {
      width: 300px;
      padding: 20px;
      margin: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      border-radius: 8px;
      background-color: #fff;
    }

    h2 {
      margin: 0;
    }
</style>
</head>
<body>
<%
Admin add = (Admin)request.getAttribute("admin");
%>
	<div class="nav">
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li>Welcome <%= add.getUser_name() %></li>
			<li><a href="viewAllAdmins">View Admins</a></li>
			<li><a href="viewAllVoters">View Voters</a></li>
			<li><a href="viewAllCandidates">View Candidates</a></li>
			<li><a href="index.jsp">Logout</a></li>
		</ul>
	</div>
	<br>
	<div style="border: 2px solid green; border-radius:10px;">
		<center>
			<h1>Admin Dashbord</h1>
			<br>
			<%
    List<Candidate> ls = (List<Candidate>) request.getAttribute("listOfCan");
    for (Candidate can : ls) {
  %>
  <div class="card">
    <h2><%=can.getFirst_name()%>: Total Votes = <%=can.getVotes()%></h2>
  </div>
  <%
    }
  %>
		</center>
	</div>
</body>
</html>