<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.* " %>

<!DOCTYPE html>
<html>
<head>
 <title>Approvad Appointments</title>
 </head>
  <body>
  <center><h1>Approved Appointments</h1></center>
  
  <fieldset>
  <form method="post">
  <center>

  <table  border='1' width="100%">
  <input type="hidden"name="Pno"/>
   
<tr>
  	
    <th>Patients Name</th>
		<th>Gender</th>
		<th>Age</th>
	<th>Patients Mobile no</th>
	<th> Patients EmailID</th>
	<th>Address</th>
	<th>Date</th>
	<th>Time</th>
	<th>Disease</th> 
	
	<th>remark</th>
	
	</tr>
	<%






Connection con;
PreparedStatement ps;
ResultSet rs;

String db="dbappointments";
String user="root";
String pass="";

Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection("jdbc:mysql://localhost/"+db,user,pass);

ps=con.prepareStatement("select * from tblallapointments where Remark='A';");



rs = ps.executeQuery();
while(rs.next())
{


%>
	
	

	
	
	
	
	
	
	<tr>
	
	<td><%=rs.getString("Pname")%></td>
		<td><%=rs.getString("Pgender")%></td>
			<td><%=rs.getString("Page")%></td>
				<td><%=rs.getString("Pmobno")%></td>
				<td><%=rs.getString("Pemail")%></td>
				<td><%=rs.getString("Paddress")%></td>
				<td><%=rs.getString("Pdate")%></td>
				<td><%=rs.getString("Ptime")%></td>
				<td><%=rs.getString("Pdisease")%></td>
				
				<td><%=rs.getString("Remark")%></td>
				
				</tr>
				<%
}

%>
  
  
 


  
  
  </table>

  </center>
  </form>
  </fieldset>
  </body>
  </html>
  