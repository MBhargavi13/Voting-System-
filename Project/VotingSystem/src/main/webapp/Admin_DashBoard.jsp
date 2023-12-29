<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        *{
            margin: 0px;
            padding: 0px;
        }
        nav{
            width: 98%;
            height: 80px;
            margin:20px;
            background-color:black;
            text-align: center;
        }
        nav ul{
            display: inline-flex;
        font-size: 20px;
        padding: 10px;
        list-style-type: none;
        position: absolute;
        left:20px; 
        }
        nav ul li{
            padding: 20px;
        }
        a{
            text-decoration: none;
        }
        a:hover{
            color:white;
            background-color:green;
            padding:29px;
        }
        
  </style>
</head>
<body>
<center>
<div>
      <nav>
        <ul>
            <li><a href="" >HOME</a></li>
            <li><a href="">Welcome Admin</a></li>
            <li><a href="Admin_DashBoard.jsp">View Admins</a></li>
             <li><a href="Votedetails.jsp" >View Voters</a></li>
            <li><a href="">View Candidates</a></li>
            <li><a href="">Logout</a></li>
          </ul>
       </nav>
       
       <div style="width:98%;height:300px;border: 2px solid green;margin:10px 10px 10px 10px;">
<br>
<h1>Admin Dashboard</h1>
<br>
<br>
<h3>Candidate 1 : Total Votes = 0</h3>
<br>
<h3>Candidate 2 : Total Votes = 1</h3>
<br>
<h3>Candidate 3 : Total Votes = 0</h3>
<br>
<h3>Candidate 4 : Total Votes = 0</h3>
<br>
</div>
</div>
</center>

</body>
</html>