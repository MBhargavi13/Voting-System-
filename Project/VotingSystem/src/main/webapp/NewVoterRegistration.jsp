<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
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
	.a{
	height:700px;
	border: solid 2px green;
	border-radius:10px;
	}
	a{
	text-decoration: none;
	color: white;
	}
	
    form {
      width: 300px;
      height:500px;
      padding: 20px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      border-radius: 8px;
      background-color: #fff;
    }

    input {
      width: 100%;
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
    .gender{
    display:flex;
    justify-content: space-evenly;
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
			<li>About</li>
		</ul>
	</div>
	<br>
	<div class="a">
		<center>
			<h1>New Voter Registration</h1>
		 <form action="signup">
    <input type="text" placeholder="First Name" name="first_name">
    <input type="text" placeholder="Last Name" name="last_name">
    <input type="date" placeholder="Date of Birth" name="dob">
    <div class="gender">
    <label>Gender:</label>
    <input type="radio" name="gender" value="male">Male
    <input type="radio" name="gender" value="female">Female
    </div>
    <input type="number" placeholder="Aadhar No" name="aadhar_no">
    <input type="text" placeholder="Pan No" name="pan_no">
    <input type="email" placeholder="Email Id" name="email_id">
    <input type="number" placeholder="Phone No" name="mobile_no">
    <input type="text" placeholder="Address" name="address">
    <input type="text" placeholder="User Name" name="user_name">
    <input type="password" placeholder="Password" name="password">
    <input type="submit" value="Signup">
  </form>
			<br>
			<% 
				  String msg=(String)request.getAttribute("status");
                    if(msg!=null)
                     {
                 %>
				<h2 style="color:#2B9348;"><%=msg%></h2>
				<%
                     }
                     %>
		</center>
	</div>
</body>
</html>