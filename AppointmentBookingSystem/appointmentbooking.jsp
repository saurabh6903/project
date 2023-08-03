<%@ page import = "java.sql.*"%>
<%@ page import = "java.util.*"%>


<%
if (request.getParameter("submit")!=null)
{
	String patientname=request.getParameter("pname");
	String gender=request.getParameter("pgen");
	String age=request.getParameter("page");
	String patientmobile=request.getParameter("pmobno");
	String patientemail=request.getParameter("pemail");
	String address=request.getParameter("paddress");
	String pdate=request.getParameter("adate");
	String ptime=request.getParameter("atime");
    String disease=request.getParameter("pdisease");

	
	
	Connection con;
	PreparedStatement ps;
	String db="dbappointments";
	String user="root";
	String pass="";
	
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/"+db,user,pass);

ps=con.prepareStatement("insert into tblallapointments (Pname,Pgender,Page,Pmobno,Pemail,Paddress,Pdate,Ptime,Pdisease,Remark)values(?,?,?,?,?,?,?,?,?,'pending');");

ps.setString(1,patientname);
ps.setString(2,gender);
ps.setString(3,age);
ps.setString(4,patientmobile);
ps.setString(5,patientemail);
ps.setString(6,address);
ps.setString(7,pdate);
ps.setString(8,ptime);
ps.setString(9,disease);





	ps.executeUpdate();
	out.println("Appointment Registered Successfully");
}
%>



<!DOCTYPE html>
<html>
<head>
 <title>Booking Appointment</title>
 </head>
  <body >
     <center><b> <h1>Appointment Booking</h1></b></center>
	   <center>
  <fieldset >
  <form method="post">

     

  <table width="50%">


   
<input type="hidden"name="Approval">
  <tr>
  <td>Patients Name :</td>
  <td><input type ="text"placeholder ="Enter Your Name" name="pname" required ="required"></td>

  </tr>
  
  <tr>
  <td>Gender :</td>
  <td><input type ="radio" name="pgen" value="Male">Male
  <input type ="radio" name="pgen" value="Female" required ="required">Female</td>
  </tr>
  
  <tr>
  <td>Age :</td>
  <td><input type ="number" name="page" required ="required"></td>
  </tr>
  
  <tr>
  <td>Patients Mobile No :</td>
  <td><input type ="text"placeholder ="Enter Your Mobile no" name="pmobno" required ="required"></td>
  </tr>
  
  <tr>
  <td>Patients EmailID :</td>
  <td><input type ="email"placeholder ="Enter Your email" name="pemail" required ="required"></td>
  </tr>
  
  <tr>
  <td>Address :</td>
  <td><textarea  rows="5" cols="30" placeholder ="street Address" name="paddress"></textarea></td>
  </tr>
 
  
  <tr>
  <td>Date :</td>
  <td><input type ="date" name="adate" required ="required"></td>
  </tr>
  
   <tr>
  <td>time :</td>
  <td><input type ="time" name="atime"></td>
  </tr>
  
  <tr>
  <td>Disease :</td>
  <td><textarea style="background-color:lightred"; rows="5" cols="30" placeholder ="Disease" name="pdisease" required ="required"></textarea></td><br><br>
  </tr>
  
  <tr>
  <td colspan="2"align="center"><input type="submit" value="submit" name ="submit" required ="required"></td>
  </tr>
  
  </table>

  
  </form>
  </center>
  </fieldset>
  </body>
  </html>
  