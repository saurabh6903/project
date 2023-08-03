<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.* " %>



<% 

boolean ispost="POST".equals(request.getMethod());
if(ispost)

  {
  
 String username= request.getParameter("DUname");
String usrpassword= request.getParameter("DUpass");

Connection con;
PreparedStatement ps;
ResultSet rs;

String db="dbappointments";
String user="root";
String pass="";


Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection("jdbc:mysql://localhost/"+db,user,pass);

ps=con.prepareStatement("select usrpass from tbldlogin where usrname=?;");

ps.setString(1,username);


rs = ps.executeQuery();
if(rs.next())
{
	String upword=rs.getString("usrpass");
	if(usrpassword.equals(upword))
	{
	response.sendRedirect("Approved.jsp")	;
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
 <title>Doctor Login</title>
 <head>
  <body>

  <form method="post">
  

   <center><h1>DOCTOR'S LOGIN</h1></center>
   
  <fieldset >
    
  <center>
   <img src="doctor.png" alt="Doctor Login"width ="200"Height="150">

  <table width="35%">
  <tr>
  <td><i>Username :</i></td>
  <td><input type = "text" placeholder= "enter username" name="DUname" required ="required"></td>
  </tr>
  <tr>
  <td><i>Password :</i></td>
  <td><input type = "password" placeholder = "password" name="DUpass" required ="required"></td>
  </tr>
  
  <tr>
  <td colspan="2"align="center"><input type="submit" value="Login" name="Submit" required ="required"></td>
  </tr>
  
  </center>
  </fieldset>
  </form>
  </body>