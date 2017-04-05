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

String name=request.getParameter("text1");
String email=request.getParameter("text2");
String address=request.getParameter("text3");
String contact=request.getParameter("text4");
String experience=request.getParameter("text5");
String dage=request.getParameter("age");

String pass=request.getParameter("text6");
String cpass=request.getParameter("text7");
String time=request.getParameter("text8");
String img=request.getParameter("text9");
String dl=request.getParameter("text10");


try
{

	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/taxibooking", "root","root");
	Statement st=con.createStatement();
	int i=st.executeUpdate("insert into DRIVER values ('"+name+"','"+email+"','"+address+"','"+contact+"','"+experience+"','"+dage+"','"+pass+"','"+cpass + "','" + time+ "')");
	
	if(i>0)
	{
		out.println("<div class='jumbotron alert alert-success'><h1>Successfully Inserted</h1></div>");
	}
	else
		out.println("Error Occured");
}
catch(Exception e)
{
	out.println(e.getMessage());
}
%>

<form action="apanel.jsp">
	<center><button class="btn btn-primary">Back</button></center>
</form>


<script src="js/bootstrap.min.js"></script>
</body>
</html>