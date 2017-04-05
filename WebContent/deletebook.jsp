<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>

	<%
		
		try{
			Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/taxibooking", "root","root");
			Statement st = con.createStatement();
			st.executeUpdate("delete from booking where Username='" + session.getAttribute("user")+"'");
		}
	catch(Exception e){
		
	}
	%>
    <div class="jumbotron text-center alert alert-danger">
    	<h1>Booking Deleted</h1>
    </div>
    <form action="booking.jsp">
    <center><button class="btn btn-primary" type="submit">Book Again</button></center>
    </form>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>