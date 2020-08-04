<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>User Registeration</title>
  
  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

      <link rel="stylesheet" href="CSS/PatientReg.css">

</head>

<body>
<div class="container-fluid con">
		<div class="row">
			<div class="col-md-1"><img  src="Images/virus.png"  width="89px" height="89px"style="float:right;"></div>
			<Strong><p style="font-size:29px;color:black;" align="center">Covid Patient Monitoring System</p></Strong>
		</div>

  <div class="columnk">
	  <section class="section">
		    <header>
		      <h1 align="center"><span style="color:red"><%=(request.getAttribute("nreg")==null) ? "":request.getAttribute("nreg")%></span></h1>
		       <h1 align="center"><span style="color:green"><%=(request.getAttribute("reg")==null) ? "":request.getAttribute("reg")%></span></h1>
		   
		     <div class="main">
		       <h1 align="center">User Register</h1>
		       <div class="ch1">
		            <img src="Images/profile.png" width="90" height="90"alt="profile pic"></img>
		        </div>
		        <hr>
		      </div>
		    </header>
		    <main>
		      <form method="post" action="PatientGetDetails.jsp">
		        <div class="form-item box-item">
		          <input type="number" name="SampleNo" class="tx1" placeholder="Sample No" required data-required>
		          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
		        </div>
		        
		        <div class="form-item box-item">
		          <input type="text" name="name" class="tx1" placeholder="Name" required data-required>
		          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
		        </div>
		        
		        <div class="form-item box-item">
		          <input type="number" name="age" class="tx1" placeholder="Age" required data-required>
		          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
		        </div>
		        
		        <div class="form-item box-item">
		          <div class="form-item-triple">
		          
		            <div class="radio-label"> 
		              <label class="label">Gender</label>
		            </div>
		            
		            <div class="form-item"> 
		              <input id="Male" type="radio" name="gender" value="M" data-once required>
		              <label for="Male">Male</label>
		            </div>
		            
		            <div class="form-item"> 
		              <input id="Female" type="radio" name="gender" value="F" data-once>
		              <label for="Females">Female</label>
		            </div>
		            
		          </div>
		          <small class="errorOnce"><i class="fa fa-asterisk" aria-hidden="true"></i> choose at least one</small>
		        </div>
		        
		        <div class="form-item box-item">
		          <input type="email" name="email" class="tx1" placeholder="Email" data-email required>
		          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
		          <small class="errorEmail"><i class="fa fa-asterisk" aria-hidden="true"></i> email is not valid</small>
		        </div>
		       
		       <div class="form-item box-item">
		          <input type="text" name="phone" placeholder="Phone" required data-number data-count="10" maxlength="10">
		          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
		          <small class="errorNum"><i class="fa fa-asterisk" aria-hidden="true"></i> must be a number</small>
		          <small class="errorChar"><i class="fa fa-asterisk" aria-hidden="true"></i> must be 10 digits</small>
		        </div>
		      
		         <div class="form-item box-item">
		          <input type="text"  name="city" class="tx1" placeholder="Enter city" required data-required>
		          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
		        </div>
		        
		         <div class="form-item box-item">
		          <input type="text" name="PIN" class="tx1" placeholder="PIN Code" minlength="6" maxlength="6" required data-required>
		          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
		          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> must be 6 digits</small>
		        </div>
		        
		         <div class="form-item box-item">
		          <input type="password" name="pass" class="tx1" placeholder="Create Password" required data-required>
		          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
		          
		        </div>
		        <div class="form-item">
		        <input type="submit" id="submit" class="submit">
		          
		        </div>
		      </form>
		    </main>
		    <footer>
		      <p>Already have an account? <a href="PatientLog.jsp">Login</a></p>
		    </footer>
		    <i class="wave"></i>
	  </section>
	</div>
</div>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

  

    <script  src="PatientReg.js"></script>

<style>
.ch1
{
  margin-left:40%;
  
}
.con
{
  background-color:#E5E7E9;
}

</style>

<script>
   $(document).ready(function(){
	   $(".section").on({
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