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

.a {
	border: solid 2px green;
	width: 100%;
	border-radius:10px;
	height: 880px;
}

.user {
	width: 50%;
	float: left;
}

.options {
	width: 50%;
	float: left;
}

a {
	text-decoration: none;
	color: white;
}

  .card-form {
      max-width: 350px;
      margin: auto;
      padding: 20px;
      border: 1px solid #ccc;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    .card-form input[type="text"],
    .card-form input[type="date"],
    .card-form input[type="number"],
    .card-form input[type="email"] {
      width: 80%;
      padding: 10px;
      margin-bottom: 10px;
      box-sizing: border-box;
    }
    .card-form input[type="radio"] {
      margin-right: 5px;
    }

    .card-form label {
      margin-right: 10px;
    }
    .card-form input[type="submit"],
    .card-form input[type="reset"] {
      width: 35%;
      padding: 10px;
      box-sizing: border-box;
      display: inline-block;
    }
</style>
</head>
<body>
	<div class="nav">
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="">Apply For Candidate</a></li>
			<li><a href="VoterSignin.jsp">Logout</a></li>
		</ul>
	</div><br>
	<div class="a">
		<center>
			<h1>Candidate Dashboard</h1>
			<form class="card-form" action="addCandidate">
    <input type="text" placeholder="First Name" name="first_name">
    <input type="text" placeholder="Last Name" name="last_name">
    <input type="date" placeholder="Date of Birth" name="dob">
    <br>
    <label>Gender:</label>
    <input type="radio" name="gender" value="male">Male
    <input type="radio" name="gender" value="female">Female
    <input type="text" placeholder="Age" name="age">
    <input type="number" placeholder="Aadhar No" name="aadhar_no">
    <input type="text" placeholder="Pan No" name="pan_no">
    <input type="email" placeholder="Email Id" name="email_id">
    <input type="number" placeholder="Phone No" name="mobile_no">
    <input type="text" placeholder="Address" name="address">
    <input type="text" placeholder="Monthly Income" name="monthly_income">
    <input type="text" placeholder="Yearly Income" name="yearly_income">
    <input type="text" placeholder="Total Property" name="total_property">
    <br>
    <label>Criminal Background:</label>
    <input type="radio" name="criminal_background" value="yes">Yes
    <input type="radio" name="criminal_background" value="no">No
    <br><br>
    <input type="submit" value="Apply">&nbsp;&nbsp;&nbsp;
    <input type="reset" value="Cancel">
  </form>
				<%
				String status =(String)request.getAttribute("status");
				if(status!=null)
				{
					boolean check=(Boolean)request.getAttribute("check");
					if(check)
					{
				%>
				<h2 style="color:green;"><%= status %></h2>
				<%
					}
					else
					{
				%>
				<h2 style="color:red;"><%= status %></h2>
				<%
					}
				}
				%>
				
		</center>
	</div>
	


</body>
</html>