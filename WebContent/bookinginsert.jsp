<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>

<%

String a=request.getParameter("username");
String b=request.getParameter("email");
String c=request.getParameter("source");
String d=request.getParameter("destination");
String e=request.getParameter("time");
String f=request.getParameter("date");
String g=request.getParameter("RadioGroup1");

int day, month ,year;
int second, minute, hour;


GregorianCalendar date=new GregorianCalendar();

day=date.get(Calendar.DAY_OF_MONTH);
month=date.get(Calendar.MONTH);
year=date.get(Calendar.YEAR);



second=date.get(Calendar.SECOND);
minute=date.get(Calendar.MINUTE);
hour=date.get(Calendar.HOUR);

String datee=""+day+ ":" +month+":"+year +"";
String tym=""+hour+ ":" +minute+":"+second +"";


String name="",contact="";

try
{
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/taxibooking", "root","root");
	Statement st=con.createStatement();
	int i=st.executeUpdate("insert into BOOKING values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+tym+"','"+datee+"')");
	ResultSet rs = st.executeQuery("select * from driver where Name='vasu'");
	if(i>0)
	{
	
		out.println("<div class='jumbotron text-center alert alert-success'><h1>Booking Saved<h1></div>");
		//response.sendRedirect("index.html");
	}
	else
		out.println("Error Occured");
	
	if(rs.next()){
		name = rs.getString(1);
		 contact = rs.getString(4);
	}

}

catch(Exception ex)
{
	out.println(ex.getMessage());
	
}



%>
<div class="text-center alert alert-info">
	<h1>Your Cab Driver's Details</h1>
	<p><b>Name: </b><%=name %></p>
	<p><b>Contact: </b><%=contact %></p>
	<h3>Your cab will arrive shortly.</h3>
	<h5>Thanx for using Tour Taxi Services.</h5>
</div>


<form action="booking.jsp">
			<center><button type="submit" class="btn btn-primary">Back</button></center>
		</form>
<script src="js/bootstrap.min.js"></script>
</body>
</html>