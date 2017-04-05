<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body style="background-color:#FAFAD2">
<center class="alert alert-info" style="margin-top:50px">
<h1>Welcome <%= session.getAttribute("user") %></h1>

<h3>These are your Booking Details till date..!!</h3>
<table border="3" cellpadding="5" bgcolor="white">
<caption><h2>Booking Records</h2></caption>
<tr><th>Name</th><th>Source</th><th>Destination</th><th>Time</th><th>Date</th><th>Car</th><th>Booking Time</th><th>Booking Date</th></tr>
<%

String em = request.getParameter("nm");

try{

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/taxibooking", "root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from booking where Email='" + em + "'");

String s1, s2, s3, s4, s5, s6, s7 ,s8;
if(rs.next())
{
	
		s1=rs.getString(1);
		  
		s2=rs.getString(3);
	
		s3=rs.getString(4);
		   
		s4=rs.getString(5);
	  
		s5=rs.getString(6);
		s6=rs.getString(7);
		s7=rs.getString(8);
		s8=rs.getString(9);
	 
	 
    %>
    <tr>
    <td><%= s1%></td>
    <td><%= s2%></td>
    <td><%= s3%></td>
    <td><%= s4%></td>
    <td><%= s5%></td>
    <td><%= s6%></td>
    <td><%= s7%></td>
    <td><%= s8%></td>
    </tr>
   	
   
    <%    
    }
}
catch(Exception e){
out.print(e.getMessage());
}
%>

</table>
<div style="margin-top:20px">
 <form action="booking.jsp">
 <center><button class="btn btn-primary" type="submit">Back</button></center>
 </form>
 </div>
 </center>
<script src="js/bootstrap.min.js"></script>
</body>
</html>