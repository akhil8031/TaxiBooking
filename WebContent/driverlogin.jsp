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
	String n=request.getParameter("text2");

	String ps=request.getParameter("text6");
	
	
	try
	{

	

	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/taxibooking", "root","root");

	Statement st=con.createStatement();
	
	ResultSet rs=st.executeQuery("select * from DRIVER where Email='"+n+"' and Password='"+ps+"'" );
	
	if(rs.next())
		
	{
		%>
		
		<div class="text-center jumbotron alert alert-success"><h1>Driver's Panel</h1><h3><%="Welcome " + rs.getString(1)%></h3></div>
	<%
	}
	else
	{
	out.print("Either You have entered wrong Username or Password");
	}
		
	}
	catch(Exception e)
	{
	out.print(e.getMessage());
	}



	%>
<script src="js/bootstrap.min.js"></script>
</body>
</html>