<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UserDashBoard1</title>
<style>
        *{
            margin: 0px;
            padding: 0px;
        }
        nav{
            width: 98%;
            height: 80px;
            margin:20px;
            background:black;
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
        table{
        position:absolute;
        bottom:180px;
        left:385px;
        }      
  </style>
</head>
<body>
<center>
<div>
      <nav>
        <ul>
            <li><a href="" >HOME</a></li>
            <li><a href="">Welcome Yash</a></li>
            <li><a href="">Logout</a></li>
          </ul>
       </nav>
       
       <div style="width:98%;height:550px;border: 2px solid green;">
<br>
<h2>User DashBoard</h2>
<br>
<br><br>
   <h2 style="position:absolute;left:400px;">User Details:</h2>
   <img alt="" src= "WhatsApp Image 2023-09-23 at 08.11.58.jpg" style="width:150px;height:150px;position:absolute; border-radius: 100%;top:260px;left:385px;" >
    <table border="1"cellpadding="20px" cellspacing="3px">
    <tr align="center">
    <td>Id:</td>
    <td>68</td>
    </tr>
    <tr align="center">
    <td>Name:</td>
    <td>Yash</td>
    </tr>
    <tr align="center">
    <td>Email Id:</td>
    <td>yash@gmail.com</td>
    </tr>
    <tr align="center">
    <td>Phone No:</td>
    <td>1234</td>
    </tr>
    <tr align="center">
    <td>Status:</td>
    <td>Not Voted</td>
    </tr>
    </table> 
     <h3 style="color: red;position:absolute;left:1000px;">Yash</h3>
     <form style=" position:absolute;
        bottom:240px;
        left:980px;">
     <h4>Do Voting</h4>
     <br>
     <input type="radio"><label>Candidate 1</label>
     <br><br>
     <input type="radio"><label>Candidate 2</label>
     <br><br>
     <input type="radio"><label>Candidate 3</label>
     <br><br>  
     <input type="radio"><label>Candidate 4</label>
     <br><br>
     <input type="submit" value="Vote">
     </form>
       </div>
       </center>

</body>
</html>

