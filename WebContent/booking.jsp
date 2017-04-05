<%@page import="org.apache.catalina.startup.SetAllPropertiesRule"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
<!--
.style1 {
	font-size: xx-large;
	font-weight: bold;
}
.style2 {font-size: medium}
.style3 {font-size: small}
.style4 {font-size: large}
.style6 {font-size: large; font-weight: bold; }
-->
</style>
<link rel="stylesheet" href="css/bootstrap.css">
</head>


<body>

<form action="clogout.jsp">
<div style="float:right">
    <button type="submit" class="btn btn-primary">Logout</button>
</div>
</form>

<div class="jumbotron text-center alert alert-success">
<h1><%="Welcome " + session.getAttribute("user") %></h1>
<h3>Here you could book your Taxi. Update and Delete your Booking. and also you could view your Booking.</h3>
</div>
<% if(session.getAttribute("user")==null)
{
	response.sendRedirect("Home.html");
}
%>

<div  id="d1" align="center"></div>

<div class="col-md-6 col-md-offset-3 alert alert-info">
<form action="bookinginsert.jsp" method="post" name="form1">
<h3 class="text-center">Booking</h3>
<div class="form-group">
    <label for="exampleInputName">Name</label>
    <input type="text" name="username" class="form-control" id="exampleInputEmail1" value="<%= session.getAttribute("user") %>" placeholder="Username">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email</label>
    <input type="text" name="email" class="form-control" id="exampleInputEmail1" value="<%= session.getAttribute("mail") %>" placeholder="Email">
  </div>
  <div class="form-group">
    <label for="exampleInputSource">Source</label>
    <input type="text" name="source" class="form-control" id="exampleInputPassword1">
  </div>
  <div class="form-group">
    <label for="exampleInputDestination">Destination</label>
    <input type="text" name="destination" class="form-control" id="exampleInputFile">
  </div>
   <div class="form-group">
    <label for="exampleInputTime">Time</label>
    <input type="text" name="time" class="form-control" id="exampleInputFile">
  </div>
   <div class="form-group">
    <label for="exampleInputTime">Date</label>
    <input type="text" name="date" class="form-control" id="exampleInputFile">
  </div>
   <div class="form-group">
	<label for="exampleInputFile">Cars</label>
	<input type="radio" name="RadioGroup1" value="Alto">Alto
	<input type="radio" name="RadioGroup1" value="Swift">Swift
	<input type="radio" name="RadioGroup1" value="Scorpio">Scorpio
	<input type="radio" name="RadioGroup1" value="Innova">Innova
   </div>
  
  <button type="submit" class="btn btn-default">Submit</button>
</form>
</div>

<div class="col-md-4 col-md-offset-3 alert alert-danger" style="margin-top:30px">
	<form action="deletebook.jsp">
		<div class="form-group">
		    <label for="exampleInputCancel">Cancel Your Booking</label>
		    <input type="submit" name="Submit3" value="Delete" id="exampleInputFile">
 		</div>
	</form>
</div>


  <div class="col-md-4 col-md-offset-3 alert alert-success" style="margin-top:30px">
  <form action="viewbook.jsp">
  	<div class="form-group">
		<label for="exampleInputCancel">Enter Your Name</label>
		<input type="text" name="nm" class="form-control" value="<%= session.getAttribute("mail") %>"  id="exampleInputFile">
		<input type="submit" value="View Booking">
 	</div>
  </form>
  </div>
  

<script src="js/bootstrap.min.js"></script>
</body>
</html>