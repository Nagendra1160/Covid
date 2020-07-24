<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<h1 align="center">Please Login</h1>
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
	    	 alert("Password can't be blanck");
	        return false;
	    	 }

}

</script>
</head>
<body>
<div>
<table align="center" cellpadding="5px" cellspacing="5px">
    <form action="PatientLogDetails.jsp" onsubmit="return validate()" method="post" name="form">

 <tr>
 <td><label>Username</label></td>
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
</div>
<style>
div
{
	background-color:white;
	margin:20%;
	margin-top:7%;
}
input[type=text],[type=password],button
{
	padding:15px;
	background-color:#A3E4D7;
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
    </style>
</body>
</html>