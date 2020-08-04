<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">   
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String Pname=(String)session.getAttribute("Pname"); %>
<div class="container-fluid con">
<div class="row">
<div class="col-md-4"><img  src="Images/virus.png" width="65px" height="65px" style="float:right;"></div>
<div class="col-md-6"><Strong><h2>Covid Patient Monitoring System</h2></Strong></div>
<div class="col-md-2"><h3>Hello <%=Pname%></h3></div>
</div>
<div class="main">
<h2 align="center">Assess Yourself</h2>
<form action="PatientSymptomsGet.jsp" method="post">
 <input type="checkbox" id="vehicle1" name="trou" value="YES">
  <label for="vehicle1"> Trouble Breathing</label><br>
  
  <input type="checkbox" id="vehicle2" name="coug" value="YES">
  <label for="vehicle2">Cough</label><br>
  
  <input type="checkbox" id="vehice3" name="loss" value="YES">
  <label for="vehicle3">Loss of Smell or Taste</label><br><br>
  <hr>
   <label>Have you ever had any of the following</label>
   <table>
   <tr>
   <td><input type="checkbox" id="vehice3" name="diab" value="YES">
  <label for="vehicle3">Diabetes</label></td>
  <td><input type="checkbox" id="vehice3" name="hype" value="YES">
  <label for="vehicle3">Hypertension</label></td>
   <td><input type="checkbox" id="vehice3" name="lung" value="YES">
  <label for="vehicle3">Lung Diseases</label></td>
  </tr>
  
  <tr>
  <td><input type="checkbox" id="vehice3" name="hear" value="YES">
  <label for="vehicle3">Heart Diseases</label></td>
  <td><input type="checkbox" id="vehice3" name="kidn" value="YES">
  <label for="vehicle3">Kidney Disorder</label></td>
  <td><input type="checkbox" id="vehice3" name="none" value="YES">
  <label for="vehicle3">None Of the above</label></td>
  </tr>
 </table>
 <hr>
 <table>
   <tr>
   <td><label>Scale body temperature</label></td>
   </tr>
   <tr><td><input type ="range" name="temp" min="97.6" max="104" value="98.6" step="0.1" id="myRange"></td></tr>
    <tr><td> <p>Value: <span id="demo"></span></p></td></tr>
   
   <tr><td><label>Enter pulse rate</label></td></tr>
   <tr><td><input type ="number" name="puls"  max="150" min="40" required></td></tr>
   
   <tr><td><label>Enter blood pressure</label></td></tr>
   <tr><td><input type ="number" name="systolic" placeholder="120" max="300" min="0" required><span id="slash">/</span><input type="number" name="diastolic" placeholder="80"  min="10" max="290" required></td></tr>
   
   <tr><td><label>Enter resperation rate</label></td></tr>
   <tr><td><input type ="number" name="resp" max="30"  min="5" required><br></td></tr>
   
 
 <tr><td><input type="submit" value="Submit"></td></tr>
</table>
</form>

</div>
</div>
<script>
var slider = document.getElementById("myRange");
var output = document.getElementById("demo");
output.innerHTML = slider.value;

slider.oninput = function() {
  output.innerHTML = this.value;
  
}</script>
<script>
function validate()
{
  	
  var pulse=document.form.puls.value;
  var bp_s=document.form.systolic.value;
  var bp_d=document.form.diastolic.value;
  
}
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
<style>
.main
{
  margin:10%;
  background-color:white;
  box-shadow:7px 8px 6px 7px;
  border-radius:18px;
  margin-top:3%;
}
form
{
  align:center;
  margin:10%;
  margin-top:5%;
}
table
{
 cellpadding:5px;
  cellspacing:5px;
}
#slash
{
font-size:25px;
color:black;
}
input[type=number],input[type=text] 
{
    background: transparent;
    border: none;
    border-bottom: 1px solid #000000;
    padding: 5px 10px;    
}
body
{
background-color:#E5E7E9;
}

button,input[type=submit]
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
	margin-left:85%;
	margin-bottom:5px;
	text-decoration:none;
	align:center;
}
</style>
</body>
</html>