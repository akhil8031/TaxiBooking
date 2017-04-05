<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String name1=request.getParameter("name");
String add=request.getParameter("address");
String cont=request.getParameter("contact");
String mail=request.getParameter("email");
String pwd=request.getParameter("pass");
String cpwd=request.getParameter("cpass");

String radi=request.getParameter("rad");


try
{
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/taxibooking", "root","root");
	Statement st=con.createStatement();
	int i=st.executeUpdate("insert into CUSTOMER values('"+name1+"','"+add+"','"+cont+"','"+mail+"','"+pwd+"','"+cpwd+"','"+radi+"')");
	
	if(i>0)
	{
		//out.println("Successfully Inserted");
		%>alert("Successfully Registered");<%
		response.sendRedirect("Home.html");
	}
	else
		out.println("Error Occured");
}
catch(Exception e)
{
	out.println(e.getMessage());
}
	
	
	

%>


</body>
</html>