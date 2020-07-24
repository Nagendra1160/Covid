<%@ page import ="cov.dbconnect.*" %>
<%@page import="java.sql.*" %>
<%@page import="cov.EmailOtp.* " %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

 int  id=(Integer)session.getAttribute("sam");

  String email=(String)session.getAttribute("email");
  String pass=(String)session.getAttribute("pass");
  out.println(id+" "+email+" "+pass);
  String coug=request.getParameter("coug"); //cough
  String loss=request.getParameter("loss"); //loss of taste and smell
  String trou=request.getParameter("trou"); //trouble in breathing
  
  String hype=request.getParameter("hype"); //Hypertension
  String lung=request.getParameter("lung"); //Lung  diseases
  String diab=request.getParameter("diab"); //Diabeties
  String hear=request.getParameter("hear"); //Heart issues
  String kidn=request.getParameter("kidn"); //Kidney disorder
  String none=request.getParameter("none"); //None of the above
  if(trou==null)trou="NO";
  if(loss==null)loss="NO";
  if(coug==null)coug="NO";
  if(hype==null)hype="NO";
  if(lung==null)lung="NO";
  if(diab==null)diab="NO";
  if(hear==null)hear="NO";
  if(kidn==null)kidn="NO";
  if(none==null)none="NO";
  float temp=Float.parseFloat(request.getParameter("temp"));
  int puls=Integer.parseInt(request.getParameter("puls"));
  int resp=Integer.parseInt(request.getParameter("resp"));
  int syst=Integer.parseInt(request.getParameter("systolic"));
  int dias=Integer.parseInt(request.getParameter("diastolic"));
  String BP=String.valueOf(syst)+"/"+String.valueOf(dias);

  int doctorId=0;
  String doctor_email="";
  if(none!=null)
  if(none.equals("YES"))
  {
	  hype="NO";
	  lung="NO";
	  diab="NO";
	  hear="NO";
	  kidn="NO";  
  }
 out.println(coug+" loss "+loss+" trou "+trou+" "+hype+" "+lung+" "+diab+" "+hear+" kidn "+kidn+" none "+none);
  
  out.println(temp+" "+puls+" "+resp+" "+syst+" "+dias+" "+BP);
  Connection con=DBConnection.connect();
  try{
  PreparedStatement st=con.prepareStatement("select doctorid from patients where sampleno=?");
  st.setInt(1,id);
  ResultSet rs=st.executeQuery();
  if(rs.next())
	  doctorId=rs.getInt(1);
  out.println("The doctor id is "+doctorId);
  
  PreparedStatement pst=con.prepareStatement("select  email from doctors where id=?");
  pst.setInt(1,doctorId);
  ResultSet rs1=pst.executeQuery();
  if(rs1.next())
	  doctor_email=rs1.getString(1);
 //out.println("The doctor email is "+doctor_email);

 PreparedStatement pst1=con.prepareStatement("insert into dailyreport values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,curdate())");
 pst1.setInt(1,id);
 pst1.setString(2,trou);
 pst1.setString(3,coug);
 pst1.setString(4,loss);
 pst1.setString(5,diab);
 pst1.setString(6,hype);
 pst1.setString(7,lung);
 pst1.setString(8,hear);
 pst1.setString(9,kidn);
 pst1.setString(10,none);
 pst1.setFloat(11,temp);
 pst1.setInt(12,puls);
 pst1.setInt(13,resp);
 pst1.setString(14,BP);
 int i=pst1.executeUpdate();
 out.println("I value "+i);
  }
  
  catch(Exception ex){
	  System.out.println(ex);
  }
  String patient_condition="";
  
 if(temp>100 || puls<60 || puls>100 ||syst>=130 || dias >=85 || syst<=100 || 
		  dias<=60 ||resp>25 || resp<12)
  {
	  String details="Your patient with sample no "+id+" undergoing with critical situation\n"+
                      "Temperature "+temp+"\n"
                      +"Pulse rate "+puls+"\n"
                      +"Blood Pressure "+BP+"\n"
                      +"Respiration rate "+resp+"\n";
	  try{
	  EmailUtility.send(doctor_email,"Alert Message ",details);
	  }
	  catch(Exception e){
		  System.out.println(e);
	  }
	  patient_condition="Your condition is getting worse ,Please contact Your doctor immediately ";
	  request.setAttribute("msg!Ok", patient_condition);
	  request.getRequestDispatcher("/Patientashboard.jsp").forward(request,response);
	  //out.println("Email send successfully ");
	  //out.println("Your condition getting worse contact your doctor ");
  }
 else
 {
	 patient_condition="You are safe Please Stay at home";
	  request.setAttribute("msgOk", patient_condition);
	 request.getRequestDispatcher("/PatientDashboard.jsp").forward(request,response);
 }
 
%>
</body>
</html>