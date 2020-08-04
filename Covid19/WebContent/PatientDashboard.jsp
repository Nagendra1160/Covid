<%@ page import="cov.dbconnect.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">   
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<h1 align="center"><span style="color:green"><%=(request.getAttribute("msgOk")==null) ? "":request.getAttribute("msgOk")%></span></h1>
<h1 align="center"><span style="color:red"><%=(request.getAttribute("msg!Ok")==null) ? "":request.getAttribute("msg!Ok")%></span></h1>
<%
  int sampleno=(Integer)session.getAttribute("sam");
String Pname="",PEmail="",PMobile="",PDate="";
String Dname="",Designation="",DEmail="",DMobile="";

int doctorid=0;
 try{
  Connection con=DBConnection.connect();
  PreparedStatement pst=con.prepareStatement("select * from patients where sampleno=?");
  pst.setInt(1,sampleno);
  
  ResultSet rs=pst.executeQuery();
  if(rs.next())
  {
	   Pname=rs.getString("Name");
	   doctorid=rs.getInt("DoctorId");
	   PEmail=rs.getString("Email");
	   PMobile=rs.getString("phonenumber");
	   PDate=rs.getDate("Joining_date").toString();
	   
	  
  }	
  session.setAttribute("Pname",Pname);
  //out.println(doctorid);
  PreparedStatement st=con.prepareStatement("select * from doctors where Id=?");
  st.setInt(1,doctorid);
  ResultSet rs1=st.executeQuery();
  if(rs1.next())
  { 
	  Dname=rs1.getString("Name");
	  Designation=rs1.getString("Designation");
      DEmail=rs1.getString("Email");
      DMobile=rs1.getString(7);
 }}
 catch(Exception e){}
%>
<body>
<div class="container-fluid con">
<div class="row">
<div class="col-md-4"><img  src="Images/virus.png" width="65px" height="65px" style="float:right;"></div>
<div class="col-md-6"><Strong><h2>Covid Patient Monitoring System</h2></Strong></div>
<div class="col-md-2"><h3>Hello <%=Pname%></h3></div>
</div>

You are Logged in
<div class="main">
    <div class="item-top">
    <div class="item">
			 <div class="ch1">
			   <img src="Images/asess.png" width="95px" height="80px" align="center">
			   <h1>Assess Yourself</h1>
			 </div>
		     <hr>
		      <button><a href ="SelfAssess.jsp" align="center">Click here</a></button>
		</div>
	    <div class="item">
	        <div class="ch1">
			   <img src="Images/doctor.jpg" width="95px" height="80px" align="center">
			   <h1>Your Doctor Details</h1>
			 </div>
		     <hr>
		      <div id ="topbar"><button>Click here</button></div>
		      <div id="panel">
		        <h4>Name:<%=Dname %></h4>
		        <h4>Designation:<%=Designation %></h4>
		        <h4>Email:<%=DEmail %></h4>
		        <h4>Mobile No:<%=DMobile%></h4>
		      </div>
		</div>
	    <div class="item">
	      <div class="ch1">
			   <img src="Images/Email.jpg" width="95px" height="80px" align="center">
			   <h1>Contact Doctor</h1>
			 </div>
		     <hr>
		     <div id="topbar1"><button>Send Email</button></div>
		     <div id="panel1">
		     <form id="fr1">
			    <input type="text" id="tb1" value=<%=PEmail %> />
			    <input type="text" id="tb2" placeholder="Enter Message " />
			    <input type="button" id="bt1" value="Send" />
			</form>
			</div>
		    
		     </button>
             
		</div>
	</div>
	
    <div class="item-top">
	    <div class="item">
	       <div class="ch1">
			   <img src="Images/diet.png" width="95px" height="80px" align="center">
			   <h1 style="margin-left:7%;">Your Diet</h1>
			 </div>
			 <hr>
			 <div id ="topbar2"><button>Click here</button></div>
		     
		</div>
		<div class="item">
		   <div class="ch1">
			   <img src="Images/user.png" width="95px" height="80px" align="center">
			   <h1>Your Profile</h1>
			 </div>
		     <hr>
		      <div id ="topbar3"><button>Click here</button></div>
		      <div id="panel3">
		        <h4>Sample No<%=sampleno %></h4>
		        <h4>Name:<%=Pname %></h4>
		        <h4>Email:<%=DEmail %></h4>
		        <h4>Mobile No:<%=DMobile%></h4>
		        <h4>Joining Date:<%=PDate%></h4>
		      </div>
 		</div>
	    <div class="item">
	       <div class="ch1">
			   <img src="Images/logout.png" width="95px" height="80px" align="center">
			   <h1>Your Profile</h1>
			 </div>
		     <hr>
		  <button><a href ="Welcome.html">Logout</a></button>
		</div>
    </div>
    </div>
</div>
<div id="panel2" style="margin-left:5%;">
<p><span style="text-decoration: underline"><strong>Early morning (6:00 am — 7:00 am)</strong></span></p>
<p>1 glass lukewarm lemon water + 1 clove of garlic</p>
<p>4–5 soaked almond and walnuts</p>
<p>After 30 mins — — green tea -1 cup (without sugar or 1 tsp honey)</p>
<p><span style="text-decoration: underline"><strong>Breakfast (8:00 am — 9:00 am)</strong></span></p>
<p>· Besan ragi spinach cheela- 2 (nos) with mint chutney and buttermilk (1 cup) Or</p>
<p>· Vegetable roti/paratha (Carrot (grated), fenugreek leaves, coriander leaves besan and whole wheat) -2 (nos) with buttermilk Or</p>
<p>· Spinach wheat and ragi dosa — 2 (nos) with sambhar (1cup) Or</p>
<p>· Oats porridge (without sugar) with added dates (1), mango slice (1), chia seeds (1tsp), flax seeds (1tsp)- 1 cup Or</p>
<p>· Vegetable omelette (1 egg white+1 whole egg) with 2 slices of whole wheat bread</p>
<p><span style="text-decoration: underline"><strong>Mid morning (10:30 am — 11:30 am)</strong></span></p>
<p>1 orange + 1 amla + 1 fruit (1 small apple,/ ½ cup pomegranate/ 2 slices of muskmelon or watermelon or papaya/ ½ cup grapes)</p>
<p><span style="text-decoration: underline"><strong>Lunch (1:00 pm — 2:00 pm)</strong></span></p>
<p>Salad (1/2 cucumber + ½ carrot)</p>
<p>Chapatti — 2 or rice — 1.5 cup</p>
<p>Dal — 1 cup</p>
<p>Vegetable (beans/ cauliflower/ broccoli/ nutri veg/ mixed veg) — ¾ cup</p>
<p>Curd — 1cup</p>
<p><span style="text-decoration: underline"><strong>Evening tea (4:30 pm — 5:30 pm)</strong></span></p>
<p>1 cup immunitea (sugar as per medical condition). Add tulsi leaves, clove, cinnamon, fennel seeds, cardamom and ginger to the tea.</p>
<p>Roasted makhana/ boiled sprouts/ chickpea sundal — ½ cup</p>
<p><span style="text-decoration: underline"><strong>Dinner (before 8:00 pm)</strong></span></p>
<p>1) 1 cup soup (tomato soup/ spinach soup/ beetroot carrot soup/sweet potato carrot tomato soup). Do add drumsticks to the soup.</p>
<p>· Whole wheat bread sandwich filled with paneer slice, lettuce, cucumber and tomato Or</p>
<p>· Paneer bhurji + 1–2 chapati Or</p>
<p>· Nutri +peas sabzi + 1–2 chapati Or</p>
<p>· Oats idli + sambhar (1 cup)</p>
<p><span style="text-decoration: underline"><strong>Post dinner (9:00 pm)</strong></span></p>
<p>Skim milk — 1 cup (without sugar) with ½ tsp turmeric</p>
<p>So, Indulge mindfully in healthy eating. Exercise regularly or practice yoga and deep breathing for atleast 5 times a week (30 mins/day).</p>
<p>Wait a second!! Please remember that the above given tips and diet plan is not a cure or remedy for coronavirus, but a way to boost up your immune system so as to fight against the infections.</p>
<p>Stay indoors, stay safe and eat healthy and be responsible towards our country.</p>
</div>
<script>
$(document).ready(function(){
	   $("#topbar").click(function(){
		   $("#panel").slideToggle(1000);
			   });
	  		   
	  });

$(document).ready(function(){
	   $("#topbar1").click(function(){
		   $("#panel1").slideToggle(1000);
			   });
	   		   
	  });

$(document).ready(function(){
	   $("#topbar2").click(function(){
		   $("#panel2").slideToggle(1000);
			   });
	   		   
	  });

$(document).ready(function(){
	   $("#topbar3").click(function(){
		   $("#panel3").slideToggle(1000);
			   });
	   		   
	  });

$(document).ready(function() {
    $('#bt1').click(function() {
        $('#fr1').attr('action',
                       'mailto:nagendrathoram66@gmail.com?subject=' +
                       $('#tb1').val() + '&body=' + $('#tb2').val());
        $('#fr1').submit();
    });
});

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

</script>




<style>
.main
{
  display:row;
  justify-content:space-around;
  margin:5%;
  backgroud-color:aqua;
}
#panel
{
  display:none;
}
.item-top
{
  display:flex;
  justify-content:space-between''
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
.ch1
{
  margin-left:28%;
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
}
a:hover
{
  color:blue;
}

#panel1
{
  display:none;
}
#panel2
{
 display:none;
}
#panel3
{
  display:none;
}
input[type=text]
{
  border-radius:18px;
  background-color:#E5E7E9;
  margin-left:15%;
}
body
{
  background-color:#E5E7E9;
}
</style>
  
</body>
</html>