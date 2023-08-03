<%@ page import = "java.sql.*"%>
<%@ page import = "java.util.*"%>



<%
if (request.getParameter("submit")!=null)
{
	String Ap=request.getParameter("Ap");
	String Pno=request.getParameter("Pno");
	
	

	
	Connection con;
	PreparedStatement ps;

	String db="dbappointments";
	String user="root";
	String pass="";
	
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/"+db,user,pass);

ps=con.prepareStatement("update tblallapointments set Remark=? where Pno=?;");

ps.setString(1,Ap);
ps.setString(2,Pno);


	ps.executeUpdate();
	out.println("Approved Successfully");
}
%>



<!DOCTYPE html>
<html>
<head>
 <title>Approval</title>
 </head>
  <body>
  <center><h1>Approving </h1></center>
  <fieldset>
  <form method="post">
  <center>

   <input type= "hidden"name ="Pno"/>
  <table width="30%">


  




<% 




String Pno;
Pno=request.getParameter("Pno");

Connection con;
PreparedStatement ps;
ResultSet rs;

String db="dbappointments";
String user="root";
String pass="";

Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection("jdbc:mysql://localhost/"+db,user,pass);

ps=con.prepareStatement("select * from tblallapointments where Pno=?;");

ps.setString(1,Pno);


rs = ps.executeQuery();
while(rs.next())
{


%>
  <tr>
  <td>Aprroval :</td>
  <td><input type ="radio" name="Ap" value="A"<%=rs.getString("Remark")%>>Approve</td>
  <td><input type ="radio" name="Ap" value="N"<%=rs.getString("Remark")%>>Not Aprroved</td>
  </tr>
  
  <tr>
  <td colspan="2"align="right"><input type="submit" value="update" name ="submit"></td>
  </tr>
  
  <%
}
%>
  
  
  </table>
  </center>
  </form>
  </fieldset>
  <a href = "allappointments.jsp">Go to All Appointments Page </a>

  </body>
  </html>
  