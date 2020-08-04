<%@ page import="cov.dbconnect.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script><meta name="viewport" content="width=device-width,initial-scale=1.0">
<h2 align="center">Patients Daily Reports</h2>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container mt-5 cont">
   	<div class="table-responsive-md">
	<table border="1" class="table table-bordered table-striped table-hover">
	 
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
			
			%><td class="bg-danger"><%=rs.getInt(1)%></td>
			  
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
			   <td class="bg-success"><%=rs.getInt(1) %></td>  
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
</div>	
<style>
.cont
{
margin-left:3%;
}
</style>				
</body>
</html>