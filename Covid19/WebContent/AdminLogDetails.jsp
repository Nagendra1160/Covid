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
<body>
<% 
String email=request.getParameter("ema");
  String pass=request.getParameter("pas");
  String k="";
  int id=0;
  Connection con=DBConnection.connect();
  PreparedStatement pst=con.prepareStatement("select * from Admin where email=? and password=?");
  pst.setString(1,email);
  pst.setString(2,pass);
  ResultSet rs=pst.executeQuery();
  if(rs.next())
  {
	id=1; 
  }
  if(id!=0)
  {
	  session.setAttribute("email", email);
	  session.setAttribute("pass",pass);
	 
	  response.sendRedirect("AdminDashboard.jsp");
	  
  }
  else
  {
	  request.setAttribute("errmessage", "You are not authorized person");
      request.getRequestDispatcher("/AdminLogin.jsp").forward(request,response);
  }

%>
</body>
</html>