<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<h1 align="center"><span style="color:green"><%=(request.getAttribute("msgOk")==null) ? "":request.getAttribute("msgOk")%></span></h1>
<h1 align="center"><span style="color:red"><%=(request.getAttribute("msg!Ok")==null) ? "":request.getAttribute("msg!Ok")%></span></h1>

<body>
You are Logged in
<div class="main">
	<div class="item">
	 <button><a href ="SelfAssess.jsp">Assess Yourself</a></button>
	</div>
    <div class="item">
	 <button>Your Doctor Details<a href ="#"></a></button>
	</div>
    <div class="item">
	 <button>Contact Your doctor<a href ="#"></a></button>
	</div>
    <div class="item">
	 <button>Diet<a href ="#"></a></button>
	</div>
	<div class="item">
	 <button>My Profile<a href ="#"></a></button>
	</div>
    <div class="item">
	 <button>Logout<a href ="Welcome.html"></a></button>
	</div>

</div>
<style>
.main
{
  display:flex;
  justify-content:space-between;
  margin:10%;
  backgroud-color:aqua;
}

</style>
</body>
</html>