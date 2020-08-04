<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<h1 align="center"><span style="color:red"><%=(request.getAttribute("msgOk")==null) ? "":request.getAttribute("msgOk")%></span></h1>
<body>
<div class="main">
<form action="OtpProcess.jsp" method="post">
<label>Enter Otp</label><br> 
<input type="text" name="otp"/><br>
<input type="submit" value="submit"/>
</form>
</div>
<style>
.main
{
   margin:10%;
   margin-left:35%;
   justify-content:space-between;
   background-color:aqua;
   padding:100px;
   width:100px;
}

</style>
</body>
</html>
