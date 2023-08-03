<%@ page import = "java.sql.*"%>
<%@ page import = "java.util.*"%>
<%@ page import = "java.io.*"%>



<!DOCTYPE html>
<html>
<head>
 <title>Generate Ticket</title>
 </head>
  <body>
    <center><h1>Appointment Booking</h1></center>
  <fieldset>
  <form method="post">
  <center>
  <table  border = "2"width="100%">

  <tr>
  	<th>Pno</th>
    <th>Patients Name</th>
		<th>Gender</th>
		<th>Age</th>
	<th>Patients Mobile no</th>
	<th> Patients EmailID</th>
	<th>Address</th>
	<th>Date</th>
	<th>Time</th>
	<th>Disease</th> 
	
	<th>Aprroved</th>
	<th>Approve</th>
	<th>Delete</th>
	</tr>
		<%
Connection con;
ResultSet rs;
String db="dbappointments";
String user="root";
String pass="";

Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+db,user,pass);

Statement st=con.createStatement();
rs=st.executeQuery("select * from tblallapointments");
while (rs.next())
{
	int Pno = rs.getInt("Pno");
	
	%>
	<tr>
	<td><%=rs.getInt("Pno")%></td>
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
				<td><a href = "approvingappointments.jsp?Pno=<%=Pno%>">Approve</a></td>
				<td><a href = "Delete.jsp?Pno=<%=Pno%>">Delete</a></td>
				</tr>
				<%
}
%>





 </table>
  <a href = "receptionLogin.jsp">Go to Reception Login </a>
  </center>
  </form>
  </fieldset>
  </body>
  </html>
  