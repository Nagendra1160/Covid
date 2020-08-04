<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
<script type="text/javascript">
function validate()
{
	var u1=document.form.nam.value;
	var p1=document.form.pas.value;
	if(u1==""||u1==null)
		{ 
		alert("Username can't be null");
		return false;
		}
	     else if(p1==""||p1==null)
	    	 {
	    	 alert("Password can't be blank");
	        return false;
	    	 }

}

</script>
</head>
<body>
<div class="container-fluid con">
<div class="row">
<div class="col-md-4"><img  src="Images/virus.png" id ="im" style="float:right;"></div>
<div class="col-md-8"><Strong><h2>Covid Patient Monitoring System</h2></Strong></div></div>

<div class="main">
  <h2 align="center">User Login</h2>
   <div class="ch1">
            <img src="Images/profile.png" width="90" height="90"alt="profile pic"></img>
        </div>
        <hr>
<table align="center" cellpadding="5px" cellspacing="5px">
    <form action="PatientLogDetails.jsp" onsubmit="return validate()" method="post" name="form">

 <tr>
 <td><label>Email</label></td>
 <td><input type="text" name="nam"></td>
 </tr>
 <tr>
 <td><label>Password</label></td>
 <td><input type="password" name="pas" ></td>
 </tr>
 <tr>
 <td><span style="color:red"><%=(request.getAttribute("errmessage")==null) ? "":request.getAttribute("errmessage") %></span></td>
 </tr>
 <tr>
 <td><input type="submit" value="Login"></td>
 
 </form>
 <td><a href="Welcome.html"><button>Cancel</button></td>
</tr>
</table>
<p align="center">Not Register yet?<a href="PatientReg.jsp">Register</a></p>
</div>
</div>
<style>
.main
{   
    border: 1px solid #000;
	background-color:white;
	margin:20%;
	margin-left:1%;
	margin-right:29%;
	margin-bottom:2%;
	margin-top:-3%;
	border-radius:18px;
	box-shadow: 7px 7px 4px 4px;
	margin-left:25%;
	
}
input[type=text],[type=password],button
{
	padding:12px;
	background-color:white;
	border-radius:18px;
}

input[type=text]:focus,[type=password]:focus
{
	
	background-color:#BFB8B7;
	
}

label
{
	margin-left:10px;
	color:#00000;
	font-size:20px;
}
.ch1
{
  margin-left:40%;
  
}
img
{
  width:40%;
	height:50%;
}
input[type=submit],input[type=reset],button
{
	background-color:#44c767;
	border-radius:28px;
	border:1px solid #18ab29;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:17px;
	margin-top:4px;
	padding:15px 20px;
	text-decoration:none;
	text-shadow:0px 1px 0px #2f6627;
}
body
{
background-color:#E5E7E9;
}
    </style>
    
     <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 

 <script>
   $(document).ready(function(){
	   $(".main").on({
		   mouseenter: function(){
		   $(this).css("background-color","#BDBFC1")
		   },
		   mouseleave: function(){
			   $(this).css("background-color","white")
			   }
	   });
	  });

  
 </script>  
</body>
</html>