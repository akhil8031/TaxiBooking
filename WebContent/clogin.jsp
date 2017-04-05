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
String y;
//String nm=request.getParameter("name");
String n=request.getParameter("email");
String p=request.getParameter("pass");



try{

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/taxibooking", "root","root");
Statement st=con.createStatement();
 ResultSet rs=st.executeQuery("select * from CUSTOMER where Email='"+n+"' and CPassword='"+p+"'" );

if(rs.next())
{
	String s=rs.getString(1);
	String e=rs.getString(4);
	
	session.setAttribute("user", s);
	session.setAttribute("mail", e);
	

    response.sendRedirect("booking.jsp");
	
    
}
else
{
  out.print("Either You have entered wrong Username or Password");  
}
}
catch(Exception e){
out.print(e.getMessage());
}
%>

 
</body>
</html>