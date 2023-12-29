<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style type="text/css">
	.nav{
		background-color:#2B9348;
		color: white;
		display: block;
		border-radius:10px;
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
	.child{
	border: solid 1.5px green;
	border-radius:10px;
	height: 100px;
	}
	a{
	text-decoration: none;
	color: white;
	
	}
	
</style>
</head>
<body>
	<div class="nav">
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="NewVoterRegistration.jsp">New Voter Registration</a></li>
			<li><a href="VoterSignin.jsp">Voter Signin</a></li>
			<li><a href="VoterSignin.jsp">Admin Signin</a></li>
			<li><a>About</a></li>
		</ul>
	</div>
	<br>
	<div class="child">
		<center><h1>Voting Application</h1></center>
	</div>
</body>
</html>