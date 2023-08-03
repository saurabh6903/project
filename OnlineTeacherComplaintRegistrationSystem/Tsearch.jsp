<%@page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<!doctype>
<html>
     <head>
	     <title>Search complaint</title>
	 </head>
	 <body>
	 <center><h1 style="color:tomato"><i> Search Complaint</i></h1></center>
	     
		     <center>
			 
		        <form method="submit">
				
				    <table>
				         <tr>
						     <td><i>Student Moblie Number : </i></td>
                             <td><input type="tel" placeholder="Enter Student No" name="smobno" required = "required"/></td>
						 </tr>
						 <tr>
                             <td><input type="submit" name="submit" value="submit" required = "required"/></td>
	                     </tr>
					</table>
				
		<br>
		<br>
		<br><br>
						 <%
if(request.getParameter("submit")!=null)
{
String smobno=request.getParameter("smobno");

 ResultSet rs;
 Connection  con;
 PreparedStatement ps;
 
 String db = "dboscr";
 String user="root";
 String pass="";
 
 Class.forName("com.mysql.jdbc.Driver");
 con=DriverManager.getConnection("jdbc:mysql://localhost/" +db,user,pass);
 
  
 ps=con.prepareStatement("select * from tblscomplaint where Smobno=?;");
 ps.setString(1,smobno);
 rs=ps.executeQuery();
 while(rs.next())
 { 
int number=rs.getInt("number");
%>
<table border="1" width="100%" style="background-color:pink">
                    <thead>
					    <tr>
						     
				             <th><i>Teacher Name</i></th>
				             <th><i>Student name</i></th>
		                     <th><i>Student Moblie No</i></th>
							  <th><i>Complaint</i></th>
							  <th><i>Update Action</i></i></th>
						</tr>
					</thead>
					 <tbody>
						<tr>
						
						
					         <td><%=rs.getString("tname")%></td>
					         <td><%=rs.getString("Sname")%></td>
			                  <td><%=rs.getString("Smobno")%></td>
			                  <td><%=rs.getString("tcomplaint")%></td>
			                  <td><%=rs.getString("upaction")%></td>
	                    </tr>
					</tbody>
<%
 }
}
%>
					</table>
				</form>
			</center>
		
	</body>
</html>