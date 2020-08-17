<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"  href="CSS/AdminRegister.css">

<meta name="google-signin-client_id" content="239056385660-qb81jiqoeol4g2ncs6b20oo30gcccaip.apps.googleusercontent.com">
</head>
<body>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<script src="https://apis.google.com/js/client:platform.js?onload=startApp" async defer></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">


<div class="container">
<br>  <p class="text-center"><h3 align="center">Admin Login</h3><a href="http://bootstrap-ecommerce.com/"></a></p>
<hr>





<div class="card bg-light">
<article class="card-body mx-auto" style="max-width: 400px;">
	<h4 class="card-title mt-3 text-center">Create Account</h4>
	<p class="text-center">Get started with your free account</p>
	<p>
		<!--  <a href="" class="btn btn-block btn-google"> <i class="fab fa-google"></i>Login via google</a>
		
		
	</p>
	<p class="divider-text">
        <span class="bg-light">OR</span>
    </p>
	<form>
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
        <input name="" class="form-control" placeholder="Full name" type="text">
    </div> <!-- form-group// 
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="" class="form-control" placeholder="Email address" type="email">
    </div> <!-- form-group// 
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-phone"></i> </span>
		</div>
		<select class="custom-select" style="max-width: 120px;">
		    <option selected="">+971</option>
		    <option value="1">+972</option>
		    <option value="2">+198</option>
		    <option value="3">+701</option>
		</select>
    	<input name="" class="form-control" placeholder="Phone number" type="text">
    </div> <!-- form-group// 
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-building"></i> </span>
		</div>
		<select class="form-control">
			<option selected=""> Select job type</option>
			<option>Designer</option>
			<option>Manager</option>
			<option>Accaunting</option>
		</select>
	</div> <!-- form-group end.// 
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input class="form-control" placeholder="Create password" type="password">
    </div> <!-- form-group// 
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input class="form-control" placeholder="Repeat password" type="password">
    </div> <!-- form-group//                                   
    <div class="form-group">
        <button type="submit" class="btn btn-primary btn-block"> Create Account  </button>
    </div> <!-- form-group//    
    <p class="text-center">Have an account? <a href="">Log In</a> </p>                                                                 
</form>
</article>

<script>

function startApp() {
    gapi.load('auth2', function() {
      gapi.client.load('plus','v1').then(function() {
        gapi.signin2.render('signin-button', {
            scope: 'profile',
            fetch_basic_profile: false
          });
        gapi.auth2.init({
          fetch_basic_profile: false,
          client_id: '239056385660-qb81jiqoeol4g2ncs6b20oo30gcccaip.apps.googleusercontent.com',
          scope:'profile'}).then(function (){
              console.log('init');
              auth2 = gapi.auth2.getAuthInstance();
              auth2.isSignedIn.listen(function() {
                  console.log(auth2.currentUser.get());
                  location.replace("AdminDashboard.jsp");
                });
              auth2.then(function(resp){
                  console.log(auth2.currentUser.get());
                });
            });
        });
    });
  }

  
  function signOut(){
    auth2.signOut();
  }
  function disconnect(){
    auth2.disconnect();
  }
  function authResponse(){
    console.log(auth2.currentUser.get().getAuthResponse());
  }

  window.onbeforeunload = function(e){
    gapi.auth2.getAuthInstance().signOut();
  };
</script>
</body>
</html>
 -->





<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="google-signin-client_id" content="239056385660-qb81jiqoeol4g2ncs6b20oo30gcccaip.apps.googleusercontent.com">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">   
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

 <script src="https://apis.google.com/js/client:platform.js?onload=startApp" async defer></script>
 <link rel="stylesheet"  href="CSS/AdminRegister.css">
 
</head>

<body>
<div class="container-fluid con">
<div class="row">
<div class="col-md-4"><img  src="Images/virus.png" style="float:right;"></div>
<div class="col-md-8"><Strong><h2>Covid Patient Monitoring System</h2></Strong></div></div>
<div class="main">
<h2 align="center">Admin Registration</h2>
<div class="ch1">
            <img src="Images/Admin.png" width="90" height="90"alt="profile pic"></img>
        </div>
        <hr>
<form action="AdminGetDetails.jsp" method="post">
<table align="center"  class="input2">   

<tr><td><input type ="text" name="nam" placeholder="first name & last name"></td><tr>
<tr><td><input type="text" name="email" placeholder="Email"></td></tr>
<tr><td><input type="password" name="pas"  placeholder="Password"></td></tr> 
<tr><td><input type="submit" name="submit"></td></tr>

</table>
<table align="center">
<tr><td>Or Connect With Google</td>
 <td> 
      <div id="signin-button"  data-width="300" data-height="200" data-longtitle="true"></div>
    </td></tr>
    
    </table>

</form>
<p align="center"> Already have an account<a href="AdminLogin.jsp">LogIn</a></p>
</div>
</div>   
    <script>
     
      function startApp() {
        gapi.load('auth2', function() {
          gapi.client.load('plus','v1').then(function() {
            gapi.signin2.render('signin-button', {
                scope: 'profile',
                fetch_basic_profile: false
              });
            gapi.auth2.init({
              fetch_basic_profile: false,
              client_id: '239056385660-qb81jiqoeol4g2ncs6b20oo30gcccaip.apps.googleusercontent.com',
              scope:'profile'}).then(function (){
                  console.log('init');
                  auth2 = gapi.auth2.getAuthInstance();
                  auth2.isSignedIn.listen(function() {
                      console.log(auth2.currentUser.get());
                      location.replace("AdminDashboard.jsp");
                    });
                  auth2.then(function(resp){
                      console.log(auth2.currentUser.get());
                    });
                });
            });
        });
      }

      
      function signOut(){
        auth2.signOut();
      }
      function disconnect(){
        auth2.disconnect();
      }
      function authResponse(){
        console.log(auth2.currentUser.get().getAuthResponse());
      }

      window.onbeforeunload = function(e){
        gapi.auth2.getAuthInstance().signOut();
      };
    </script>
    
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
<style>
body
{
	background-color:#E5E7E9;
}
img
{
  width:40%;
	height:50%;
}
.input2
{
  margin-left:30%;
}
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
input[type=submit]
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
	margin-left:40%;
}

input[type=text],[type=password]
{
	padding:12px;
	background-color:white;
	border-radius:18px;
	margin-left:10%;
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

</style>
</body>
</html>
