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
Connection con=DBConnection.connect();
String nam=request.getParameter("nam");
String ema=request.getParameter("email");
String pas=request.getParameter("pas");
PreparedStatement pst=con.prepareStatement("insert into admin values(?,?,?)");
pst.setString(1,nam);
pst.setString(2,ema);
pst.setString(3,pas);
int i=pst.executeUpdate();
if(i!=0)
	response.sendRedirect("AdminDashboard.jsp");
else
	response.sendRedirect("AdminRegister.jsp");
%>
</body>
</html>