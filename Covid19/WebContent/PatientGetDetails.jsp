<%@page import="cov.EmailOtp.*"%>


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
  String sam=request.getParameter("SampleNo");
  String nam=request.getParameter("name");
  String age=request.getParameter("age");
  String gen=request.getParameter("gender");
  String ema=request.getParameter("email");
  String phn=request.getParameter("phone");
  String cit=request.getParameter("city");
  String pin=request.getParameter("PIN");
  String pas=request.getParameter("pass");
  String Otp=OtpGeneration.Otp();
  String res="";
  //out.println(sam+" "+nam+" "+age+" "+gen+" "+" "+ema+" "+phn+" "+cit+" "+pin+" "+pas);
  
  try
  {
   EmailUtility.send(ema,Otp);
   res="OTP has been sent to your Mail";
  }
  catch(Exception e)
  {
	  res="Sending Otp failed ";
  }
  finally{
  session=request.getSession();
  session.setAttribute("msg",res);
  session.setAttribute("otp", Otp);
  
  session.setAttribute("sam",sam);
  session.setAttribute("nam",nam);
  session.setAttribute("age",age);
  session.setAttribute("gen",gen);
  session.setAttribute("ema",ema);
  session.setAttribute("phn",phn);
  session.setAttribute("cit",cit);
  session.setAttribute("pin",pin);
  session.setAttribute("pas",pas);
  response.sendRedirect("OtpEnter.jsp");
  }
 %>
</body>
</html>