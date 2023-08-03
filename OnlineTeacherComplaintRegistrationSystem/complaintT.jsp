<%@page import ="java.sql.*"%>
<%@page import="java.util.*"%>

<%
    if(request.getParameter("submit")!=null)
	{
	
		String Tname=request.getParameter("Tname");
		String sname=request.getParameter("sname");
		String smobno=request.getParameter("smobno");
		String Tcomplaints=request.getParameter("Tcomplaints");
		
		
		String db="dboscr";
		String user="root";
		String pass="";
		
		Connection con;
		PreparedStatement ps;
		
		
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost/"+db,user,pass);
		
		
		
		
		
		ps=con.prepareStatement("insert into tblscomplaint(tname,Sname,Smobno,tcomplaint,upaction)values(?,?,?,?,'pending');");
		
		
		ps.setString(1,Tname);
		ps.setString(2,sname);
		ps.setString(3,smobno);
		ps.setString(4,Tcomplaints);
		
		ps.executeUpdate();
		
		
		out.println(" Complaint Register Successfullly");
	}
	%>
<!doctype html>
<html>
     <head> 
         <title>Complaint Registration</title>
     </head>
	 <body>
	    <center><h1 style="color:tomato"><i>Complaint Registration</i><h1></center>
		<fieldset style="background-color:pink">
		<center>
		     <form method="post">
			    <table>
				
				 <tr>
				     <td><i>Teacher Name  : </i></td>
					 <td><input type="text"  name="Tname" placeholder="Enter Teacher's Name" required = "required"/></td>
				</tr>
				
				<tr>
				     <td><i>Student Name : </i></td>
					 <td><input type="text"  name="sname" placeholder="Enter Your  name" required = "required"/></td>
				</tr>
				<tr>
					 <td><i>Student Mobile NO : <i/></td>
					 <td><input type="text"  name="smobno" placeholder="Enter Your Mobile No " required = "required"/></td>
				</tr>
				
				<tr> 
			         <td><i>Complaints : </i></td>
			         <td><textarea  rows="5" cols="30" name="Tcomplaints" placeholder="Enter Your Complaint" required = "required"></textarea>
			    </tr>
				<tr> 
			          <td><input type="Submit" value="Submit" name="submit" required = "required"/></td>
			     </tr>
	                <img src="complaint.jpg" alt="Here Register Complaint" width="300" height="300">
				</table>
			 </form>
		</center>
		</fieldset>
	 </body>
	 
</html>
