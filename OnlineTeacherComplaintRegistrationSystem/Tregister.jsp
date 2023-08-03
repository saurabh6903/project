<%@page import ="java.sql.*"%>
<%@page import="java.util.*"%>
<%
    if(request.getParameter("submit")!=null)
	{
		String Tname=request.getParameter("Tname");
		String Tno=request.getParameter("Tno");
		String Temail=request.getParameter("Temail");
		String Uname=request.getParameter("Uname");
		String Upass=request.getParameter("Upass");
		
		
		String db="dboscr";
		String user="root";
		String pass="";
		
		Connection con;
		PreparedStatement ps;
		
		
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost/"+db,user,pass);
		ps=con.prepareStatement("insert into tblcomplaint(tname,tmobno,temail,uname,upass)values(?,?,?,?,?);");
	
		ps.setString(1,Tname);
		ps.setString(2,Tno);
		ps.setString(3,Temail);
		ps.setString(4,Uname);
		ps.setString(5,Upass);
		
		ps.executeUpdate();
		
		out.println(" Register Successfullly");
	}
	%>
	
<!doctype html>
<html>
     <head> 
         <title> Teacher Registration Form</title>
     </head>
     <body>
	     <center><i><h1 style="color:tomato">Teacher Registration</i></h1></center>
		 <fieldset style="background-color:pink">
		 <center>
		   <form method="post">
		    <img src="Teacher.png" alt="Teacher" width="300" height="400">
		    <table>
			     <tr>
				    <td><i>Name : </i></td>
					<td><input type="text"  name="Tname" placeholder="Enter Your Name" required = "required"/></td>
				 </tr>
				 <tr>
				    <td><i>Moblie Number : </i></td>
					<td><input type="tel"  name="Tno" placeholder="Enter  Your Number" required = "required"/></td>
				 </tr>
				 <tr> 
			        <td><i>Email : </i></td>
			        <td><input type="email" name="Temail" placeholder="Enter Your email" required = "required"/></td>
			     </tr>
				 <tr>
				     <td>Create Username : </td>
					 <td><input type="text" placeholder=" Enter Username" name="Uname" required = "required"/></td>
				 </tr>
				     <td>Create Password : </td>
					 <td><input type="password" placeholder="Enter New Password" name="Upass" required = "required"/></td>
				 <tr>
				 </tr>
				 <tr> 
			        <td colspan="2" align="center"><input type="Submit" value="Submit" name="submit" required = "required"/></td>
			     </tr>
				  
			</table>
		   </form>
		 </center>
		 </fieldset>
    </body>
</html>
