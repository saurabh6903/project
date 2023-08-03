<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.* " %>



<% 

boolean ispost="POST".equals(request.getMethod());
if(ispost)

  {
  
 String username= request.getParameter("RUname");
String usrpassword= request.getParameter("RUpass");

Connection con;
PreparedStatement ps;
ResultSet rs;

String db="dbappointments";
String user="root";
String pass="";


Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection("jdbc:mysql://localhost/"+db,user,pass);

ps=con.prepareStatement("select userpassword from tblrlogin where username=?;");

ps.setString(1,username);


rs = ps.executeQuery();
if(rs.next())
{
	String upword=rs.getString("userpassword");
	if(usrpassword.equals(upword))
	{
	response.sendRedirect("allappointments.jsp")	;
	}
	else
	{
	out.println("invalid passward");	
	}
	
}

  }
%>


<!DOCTYPE html>
<html>
<head>
 <title>Reception Login</title>
 <head>
  <body >

  <form method="post">
  <center><h1>RECEPTION'S LOGIN</h1></center>
  <fieldset >
  <center>
   <img src="reception.png" alt="Doctor Login"width ="200"Height="150">

   
  <table width="30%">
  <tr>
  <td><i>Username :</i></td>
  <td><input type = "text" placeholder= "Enter username" name="RUname"></td>
  </tr>
  <tr>
  <td><i>Password :</i></td>
  <td><input type = "password" placeholder = " Enter password" name="RUpass"></td>
  </tr>
  
  <tr>
  <td colspan="2"align="center"><input type="submit" value="Login" name="Submit"></td>
  </tr>
  
  </center>
  </fieldset>
  </form>
  </body>
  </body>