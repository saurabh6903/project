<%@ page import = "java.sql.*"%>
<%@ page import = "java.util.*"%>





	
<!DOCTYPE html>
<html>
<head>
 <title> View Your Appointments</title>
 <head>
  <body>
  <form method="submit">
  <fieldset >
  <center>
 <table width="25%">
 
  <h3>Search Your Appointments Here</h3>
 <tr>
 <td>Enter Your Mobile No :</td>
  <td><input type="text" placeholder="Mobile Number" name ="pmobno"></td>
 </tr>
 

   <tr>
   <td><input type= "submit" value="Submit" name="submit"></td>
   </tr>
   <%
if (request.getParameter("submit")!=null)
{
	String pmobno= request.getParameter("pmobno");

Connection con;
PreparedStatement ps;
ResultSet rs;

String db="dbappointments";
String user="root";
String pass="";

Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection("jdbc:mysql://localhost/"+db,user,pass);

ps=con.prepareStatement("select * from tblallapointments where Pmobno=?;");

ps.setString(1,pmobno);


rs = ps.executeQuery();
while(rs.next())
{

%>


 
  <tr>
  <td>Patients Name :</td>
  <td><%=rs.getString("Pname")%></td>
  </tr>
  <tr>
  <td>Gender :</td>
		<td><%=rs.getString("Pgender")%></td>
		</tr>
		<tr>
		<td>Age :</td>
		
			<td><%=rs.getString("Page")%></td>
			</tr>
			<tr>
  <td>Patients Mobile No :</td>
  <td><%=rs.getString("Pmobno")%></td>
  </tr>
  
  <tr>
  <td>Patients EmailID :</td>
  	<td><%=rs.getString("Pemail")%></td>
  </tr>
  
  <tr>
  <td>Address :</td>
  
				<td><%=rs.getString("Paddress")%></td>
  </tr>
 
  
  <tr>
  <td>Date :</td>
		
				<td><%=rs.getString("Pdate")%></td>
  </tr>
  
   <tr>
  <td>time :</td>
	<td><%=rs.getString("Ptime")%></td>
  </tr>
  
  <tr>
  <td>Disease :</td>
  <td><%=rs.getString("Pdisease")%></td>
  </tr>
  
   <tr>
  <td>Remark :</td>
  <td><%=rs.getString("Remark")%></td>
  </tr>
  
				
	
			
				
				
				
  <%
}
}
%>
  </table>
   </center>
   </fieldset>
   </form>
   </body>
   
   </html>