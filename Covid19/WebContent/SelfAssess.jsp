<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="main">
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
   
 </table>
 <input type="submit" value="Submit">
</form>

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

</script>
<style>
.main
{
  margin:10%;
}
form
{
  align:center;
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
</style>
</body>
</html>