<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Registration Form | webdevtrick.com</title>
  
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

      <link rel="stylesheet" href="CSS/PatientReg.css">

  <h1 align="center"> Registration Form</h1>
</head>

<body>

  <div class="column">
  <section class="section">
    <header>
      <h3>Register</h3>
      <h4>Please fill your information in this form</h4>
    </header>
    <main>
      <form method="post" action="PatientGetDetails.jsp">
        <div class="form-item box-item">
          <input type="number" name="SampleNo" class="tx1" placeholder="Sample No" data-required>
          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
        </div>
        <div class="form-item box-item">
          <input type="text" name="name" class="tx1" placeholder="Name" data-required>
          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
        </div>
        <div class="form-item box-item">
          <input type="number" name="age" class="tx1" placeholder="Age" data-required>
          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
        </div>
        
        <div class="form-item box-item">
          <div class="form-item-triple">
            <div class="radio-label"> 
              <label class="label">Gender</label>
            </div>
            <div class="form-item"> 
              <input id="Male" type="radio" name="gender" value="M" data-once>
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
          <input type="email" name="email" class="tx1" placeholder="Email" data-email data-required>
          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
          <small class="errorEmail"><i class="fa fa-asterisk" aria-hidden="true"></i> email is not valid</small>
        </div>
       
       <div class="form-item box-item">
          <input type="text" name="phone" placeholder="Phone" data-required data-number data-count="10">
          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
          <small class="errorNum"><i class="fa fa-asterisk" aria-hidden="true"></i> must be a number</small>
          <small class="errorChar"><i class="fa fa-asterisk" aria-hidden="true"></i> must be 10 digits</small>
        </div>
      
         <div class="form-item box-item">
          <input type="text"  name="city" class="tx1" placeholder="Enter city" data-required>
          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
        </div>
        
         <div class="form-item box-item">
          <input type="number" name="PIN" class="tx1" placeholder="PIN Code" data-required>
          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
        </div>
        
         <div class="form-item box-item">
          <input type="password" name="pass" class="tx1" placeholder="Create Password" data-required>
          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
          
        </div>
        <div class="form-item">
        <input type="submit" id="submit" class="submit">
          
        </div>
      </form>
    </main>
    <footer>
      <p>Already have an account? <a href="#">Login</a></p>
    </footer>
    <i class="wave"></i>
  </section>
</div>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

  

    <script  src="PatientReg.js"></script>




</body>

</html>