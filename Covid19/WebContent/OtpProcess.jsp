
<%@ page import="cov.dbconnect.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body><% 
String msgOk="";
String reg="";
String nreg="";
 Connection con=DBConnection.connect();
 Statement st=con.createStatement();
 ResultSet rs=st.executeQuery("select id from doctors where temp=1");
 int id=0;
 while(rs.next())
	 id=rs.getInt(1);
 out.println(id);
 
String otpfromuser=request.getParameter("otp");
//out.println("The otp from user "+otpfromuser);
String otp=(String)session.getAttribute("otp");
//out.println("The otp from machine "+otp);


int sample=Integer.valueOf((String)session.getAttribute("sam"));
String name=(String)session.getAttribute("nam");
int age=Integer.valueOf((String)session.getAttribute("age"));
String gender=(String)session.getAttribute("gen");
String phone=(String)session.getAttribute("phn");
String email=(String)session.getAttribute("ema");
String password=(String)session.getAttribute("pas");
String city=String.valueOf(session.getAttribute("cit"));
int pin=Integer.valueOf((String)session.getAttribute("pin"));

//out.println(sample+" "+name+" "+age+" "+gender+" "+" "+email+" "+phone+" "+city+" "+pin+" "+password);
//out.prinln(curdate());
int p1=0,p2=0,p3=0,id1=id+1;
if(otpfromuser.equals(otp))
{
//out.println("proceed to database");
if(id!=505)
{
 try{
	 out.println("inside 501");
  PreparedStatement pst=con.prepareStatement("update doctors set temp=0,CountOfPatients=CountOfPatients+1 where id=?");
  pst.setInt(1,id);
  //pst.setInt(2,id);
  //pst.setInt(3,id);
   p1=pst.executeUpdate();
  
  PreparedStatement pst1=con.prepareStatement("update doctors set temp=? where id=?");
  pst1.setInt(1,1);
  pst1.setInt(2,id1);
  p2=pst1.executeUpdate();
  
  PreparedStatement pst2=con.prepareStatement("insert into patients values(?,?,?,?,?,?,?,?,?,curdate(),?)");
  pst2.setInt(1,sample);
  pst2.setString(2, name);
  pst2.setInt(3,age);
  pst2.setString(4,gender);
  pst2.setString(5,phone);
  pst2.setString(6,email);
  pst2.setString(7,password);
  pst2.setString(8,city);
  pst2.setInt(9,pin);
  pst2.setInt(10,id);
  p3=pst2.executeUpdate();
 }
 catch(Exception e){
	 System.out.println(e);
 }
}
else
{
	 try{
	  PreparedStatement pst=con.prepareStatement("update doctors set temp=0,CountOfPatients=CountOfPatients+1 where id=?");
	  pst.setInt(1,id);
	 // pst.setInt(2,1);
	 // pst.setInt(2,id);
	  p1=pst.executeUpdate();
	  
	  PreparedStatement pst1=con.prepareStatement("update doctors set temp=1 where id=?");
	  pst1.setInt(1,501);
	  //pst1.setInt(2,501);
	  p2=pst1.executeUpdate();
	  
	  PreparedStatement pst2=con.prepareStatement("insert into patients values(?,?,?,?,?,?,?,?,?,curdate(),?)");
	  pst2.setInt(1,sample);
	  pst2.setString(2, name);
	  pst2.setInt(3,age);
	  pst2.setString(4,gender);
	  pst2.setString(5,phone);
	  pst2.setString(6,email);
	  pst2.setString(7,password);
	  pst2.setString(8,city);
	  pst2.setInt(9,pin);
	  pst2.setInt(10,id);
	  p3=pst2.executeUpdate();
	 }
	 catch(Exception e1)
	 {
		 System.out.println(e1);
	 }
 }
//   out.println(p1+" "+p2+" "+p3);
if(p1==1 && p2==1 && p3==1)
{
	reg="You have successfully registered Please Login";

   request.setAttribute("reg",reg);
	 request.getRequestDispatcher("/PatientReg.jsp").forward(request,response);

}

else{
	nreg="You have not registered Please try again";
			request.setAttribute("nreg",nreg);
			 request.getRequestDispatcher("/PatientReg.jsp").forward(request,response);

}
}	
else
{
	msgOk="Please Check again";
	request.setAttribute("msgOk", msgOk);
	 request.getRequestDispatcher("/OtpEnter.jsp").forward(request,response);
}

%>

</body>
</html>