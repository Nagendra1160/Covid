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
<table border="1">
<tr><td>ID</td>
     <td>Name</td>
     <td>Designatio</td>
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
</body>
</html>