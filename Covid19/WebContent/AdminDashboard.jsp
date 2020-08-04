<%@ page import="cov.dbconnect.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

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
Your are Logged in

<div class="container-fluid">
	<div class="row">
		<div class="col-md-4"><img  src="Images/virus.png" width="89px" height="89px" style="float:right"></div>
		<div class="col-md-6"><Strong><h2>Covid Patient Monitoring System</h2></Strong></div>
		<div class="col-md-2"><button><a href="Welcome.html">LOGOUT</a></button></div>
	</div>
	<div class="main">
	     <h2 align="center">Admin Dashboard</h2>
	     <div class="ch2">
	            <img src="Images/AdminDash.png" width="120" height="120"alt="profile pic"></img>
	     </div>
	     <hr>
	     <div class="main2">
		     <div class="item">
		            <div class="ch1">
					   <img src="Images/patient.png" width="95px" height="80px" align="center">
					   <h1>Patient Profile</h1>
					 </div>
				     <hr>
		             <div id="topbar1"><button>Click here</button></div>
		     </div>
		     
		    <div class="item">
		             <div class="ch1">
					   <img src="Images/doctor.jpg" width="95px" height="80px" align="center">
					   <h1>Doctor Profile</h1>
					 </div>
				     <hr>
		             <div id="topbar2"><button>Click here</button></div>
		            
		    </div>
		          
		     <div class="item">
		             <div class="ch1">
					   <img src="Images/monitoring.png" width="95px" height="80px" align="center">
					   <h1>Monitor Data</h1>
					 </div>
				     <hr>
				     <div class="t"><button>Monitor Data</button></div>
		    </div>
	    </div>
	 </div>
</div>


<div id="panel1">
<h2 align="center">Patient's Profile</h2>
<table class="table table-bordered table-striped table-hover" >
<tr><td>Sample No</td>
     <td>Name</td>
     <td>Age</td>
     <td>Sex</td>
     <td>Phone Number</td>
     <td>Email</td>
     <td>Password</td>
     <td>Address</td>
     <td>PIN Code</td>
     <td>Joining Date</td>
     <td>Doctor ID</td>
     </tr>
<%
try{
Connection con=DBConnection.connect();
PreparedStatement pst=con.prepareStatement("select * from patients");
ResultSet rs=pst.executeQuery();
while(rs.next())
{
%>
<tr>
   <td><%=rs.getInt(1) %></td>
    <td><%=rs.getString(2) %></td>
     <td><%=rs.getInt(3) %></td>
      <td><%=rs.getString(4) %></td>
       <td><%=rs.getString(5) %></td>
        <td><%=rs.getString(6) %></td>
         <td><%=rs.getString(7) %></td>
          <td><%=rs.getString(8) %></td>
           <td><%=rs.getInt(9) %></td>
            <td><%=rs.getDate(10) %></td>
             <td><%=rs.getInt(11) %></td>
             </tr>
   <%}
}
catch(Exception e){}%>
</table>
</div>

 <div id="panel2">
                <h2 align="center">Doctor's Profile</h2>
                <table  class="table table-bordered table-striped table-hover">
				<tr><td>ID</td>
				     <td>Name</td>
				     <td>Designation</td>
				     <td>Age</td>
				     <td>Sex</td>
				     <td>Email</td>
				     <td>Phone Number</td>
				     <td>Patients Count</td>
				     </tr>
				<%
				try{
				Connection con=DBConnection.connect();
				PreparedStatement pst=con.prepareStatement("select * from doctors");
				ResultSet rs=pst.executeQuery();
				while(rs.next())
				{
				  %>
				<tr>
				   <td><%=rs.getInt(1) %></td>
				   <td><%=rs.getString(2) %></td>
				   <td><%=rs.getString(3) %></td>
				   <td><%=rs.getInt(4) %></td>
				   <td><%=rs.getString(5) %></td>
				   <td><%=rs.getString(6) %></td>
				   <td><%=rs.getString(7) %></td>
				   <td><%=rs.getInt(9) %></td>
				           
				</tr>
				   <%}
				}
				catch(Exception e){}%>
				</table>
  </div>
             
             
             
    <div class="p">
    <h2 align="center">Patient Daily Reports</h2>
	<table class="table table-bordered table-striped table-hover">
	    
			  <thead class="thead-dark">
			  	<tr>
			  		<th scope="col">Sample No</th>
			  		<th>Trouble in breathing</th>
			  		<th>Cough</th>
			  		<th>Loss of Smell & taste</th>
			  		<th>Diabetes</th>
			  		<th>Hypertension</th>
			  		<th>Lung diseases</th>
			  		<th>Heart Problem</th>
			  		<th>Kidney disorder</th>
			  		<th>Body temperature</th>
			  		<th>Pulse</th>
			  		<th>Respiration rate</th>
			  		<th>Blood Pressure</th>
			  		<th>On Date</th>
			  	</tr>
			  </thead>
			   <tbody>
			 
<%
 
try{
   
Connection con=DBConnection.connect();
int countofpatients=0,i,r=0;
ArrayList<Integer> sam=new ArrayList<>();
PreparedStatement ps1=con.prepareStatement("select  distinct(sampleid) from dailyreport");
ResultSet rs2=ps1.executeQuery();
while(rs2.next())
	sam.add(rs2.getInt(1)); 
for(i=0;i<sam.size();i++)
{
	
	%>
	
	
	<% 
	PreparedStatement pst=con.prepareStatement("select * from dailyreport where sampleid=?");
	pst.setInt(1,sam.get(i));
	ResultSet rs=pst.executeQuery();
	
	while(rs.next())
	{
		String a=rs.getString(14);
		r=1;
	    String ar[]=a.split("/");
	    int s=Integer.parseInt(ar[0]);
	    int d=Integer.parseInt(ar[1]);
	    float a11=rs.getFloat(11);
	    int a12=rs.getInt(12);
	    
	    int a13= rs.getInt(13);
	    
	   
		 if(a11>100 || a12<60||a12 >100 || s>=130||s<=100 ||d<=60||d>=85  ||a13>25 || a13<12)
		 {
			
			%><tr><td class="bg-danger"><%=rs.getInt(1)%></td>
			  
			   <td class="bg-danger"><%=rs.getString(2) %></td>
			   <td class="bg-danger"><%=rs.getString(3)%></td>
			   <td class="bg-danger"><%=rs.getString(4) %></td>
			   <td class="bg-danger"><%=rs.getString(5) %></td>
			   <td class="bg-danger"><%=rs.getString(6) %></td>
			   <td class="bg-danger"><%=rs.getString(7) %></td>
			   <td class="bg-danger"><%=rs.getString(8) %></td>
			   <td class="bg-danger"><%=rs.getString(9) %></td>
			   <td class="bg-danger"><%=rs.getFloat(11) %></td>
			   <td class="bg-danger"><%=rs.getInt(12) %></td>
			   <td class="bg-danger"><%=rs.getInt(13) %></td>
			   <td class="bg-danger"><%=rs.getString(14) %></td>
			   <td class="bg-danger"><%=rs.getDate(15) %></td>
			   </tr>
		<%  
		}
		 else
		 {
		 %>
			 <tr>  <td class="bg-success"><%=rs.getInt(1) %></td>  
			   <td class="bg-success"><%=rs.getString(2) %></td>
			   <td class="bg-success"><%=rs.getString(3) %></td>
			   <td class="bg-success"><%=rs.getString(4) %></td>
			   <td class="bg-success"><%=rs.getString(5) %></td>
			   <td class="bg-success"><%=rs.getString(6) %></td>
			   <td class="bg-success"><%=rs.getString(7) %></td>
			   <td class="bg-success"><%=rs.getString(8) %></td>
			   <td class="bg-success"><%=rs.getString(9) %></td>
			   <td class="bg-success"><%=rs.getFloat(11) %></td>
			   <td class="bg-success"><%=rs.getInt(12) %></td>
			   <td class="bg-success"><%=rs.getInt(13) %></td>
			   <td class="bg-success"><%=rs.getString(14) %></td>
			   <td class="bg-success"><%=rs.getDate(15) %></td>
			   </tr>
			   
		<% }
		
		 }
  }
 }
catch(Exception e){}
%>
	</tbody>
</table>
</div>    
<style>

.main
{
  
  
  justify-content:space-around;
  margin:2%;
}

body
{
  background-color:#E5E7E9;
}
.main2
{
  display:flex;
}

.item
{
  height:40%;
  width:40%;
  background-color:white;
  border:1px 2px solid;
  border-radius:18px;
  box-shadow:7px 8px 9px 7px;
  align:center;
  margin:4%;
  padding:30px;
 
}

.ch2
{
  margin-left:45%;
  
}
.ch1
{
  margin-left:29%;
}

button,input[type=button]
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
	margin-left:25%;
	margin-bottom:5px;
	text-decoration:none;
	float:right;
}
a:hover
{
  color:blue;
}
#panel2
{
  display:none;
  postion:absolute;
  margin:20%;
}
#panel1
{
  display:none;
  postion:absolute;
  margin:10%;
}

.p
{
  display:none;
  postion:absolute;
  margin:10%;
  margin-left:4%;
}
</style>
 <script>
  $(document).ready(function(){
	   $(".item").on({
		   mouseenter: function(){
		   $(this).css("background-color","#BDBFC1")
		   },
		   mouseleave: function(){
			   $(this).css("background-color","white")
			   }
	   });
	  });


  $(document).ready(function(){
	   $("#topbar1").click(function(){
		   $("#panel1").slideToggle(500,function()
				   {  $("#panel1").get(0).scrollIntoView();
			   });
			   });		   
	  });

  
  $(document).ready(function(){
	   $("#topbar2").click(function(){
		   $("#panel2").slideToggle(500,function()
				   {  $("#panel2").get(0).scrollIntoView();
			   });
			   });  		   
	  });
</script>
   <script> $(document).ready(function(){
	   $(".t").click(function(){
		   $(".p").slideToggle(500,function()
				   {  $(".p").get(0).scrollIntoView();
			   });
			   });  		   
	  }); 

  
  </script> 



</body>
</html>