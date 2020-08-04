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
</body>
</html>