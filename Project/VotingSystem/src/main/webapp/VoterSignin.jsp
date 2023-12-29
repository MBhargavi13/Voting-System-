<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signin</title>
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
	#c,h2{
		color:red;
	}
	a{
	text-decoration: none;
	color: white;
	}
	 input {
      width: 10%;
      box-sizing: border-box;
      margin-bottom: 10px;
      padding: 8px;
      border: 1px solid #ccc;
      border-radius: 4px;
    }

    input[type="submit"] {
      background-color: #4caf50;
      color: #fff;
      cursor: pointer;
    }

    input[type="submit"]:hover {
      background-color: #45a049;
    }
</style>
</head>
<body>
	<div class="nav">
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="NewVoterRegistration.jsp">New Voter Registration</a></li>
			<li><a href="VoterSignin.jsp">Voter Signin</a></li>
			<li><a href="AdminSignin.jsp">Admin Signin</a></li>
			<li>About</li>
		</ul>
	</div>
	<br>
	<div style="border: solid 2px green;border-radius:10px;">
		<center>
			<h1>Signin</h1>
			<br>
			 <form action="voterLogin">
      <input type="email" placeholder="Enter your email id" name="email_id">
      <br>
      <input type="password" placeholder="Enter your password" name="password">
      <br>
      <input type="submit" value="Signin">
    </form>
			<br>
				<% String status = (String)request.getAttribute("loginStatus");
				if(status!=null)
				{
				%>
				<h2 style="color:red; font-style:normal;"><%=status %></h2>
				<%
				}%>
		</center>
	</div>
</body>
</html>