<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%
    boolean ispost="POST".equals(request.getMethod());
	     
		 if(ispost)
	{
		String TUserame=request.getParameter("Tuserame");
		String TUserpass=request.getParameter("Tuserpass");
		
		
		Connection con;
		PreparedStatement ps;
		ResultSet rs;
		
		String db="dboscr";
		String user="root";
		String pass="";
		
		
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost/"+db,user,pass);
		ps=con.prepareStatement("select Upass from tblcomplaint where Uname=?;");
		
		ps.setString(1,TUserame);
		
		rs=ps.executeQuery();
		if (rs.next())
		{
		 String Upword=rs.getString("Upass");
		 if(TUserpass.equals(Upword))
		 {
			 response.sendRedirect("viewcomt.jsp?TUserame="+TUserame);
		 }
		 else
		 {
			 out.println("invalid password");
		 }
	 }
	}
%>
<!doctype html>
<html>
     <head> 
         <title>Teacher Login</title>
     </head>
     <body>
	    <center><h1 style="color:tomato"><i>Teacher Login</i></h1></center>
		 <fieldset style="background-color:pink" >
		 <center>
		 <img src="login.jpg" alt="View Data" width="200" height="200">
		   <form method="post">
		   <table>
		         <tr> 
			         <td><i>Username : </i></td>
				     <td><input type ="text" name="Tuserame" placeholder="Enter your Username" required = "required"/></td>
			     </tr>
			     <tr>
			         <td><i>Password : </i></td>
				     <td><input type="password" name="Tuserpass" placeholder="Enter your  password" required = "required"/></td>
			     </tr>
			     <tr>
			         <td ><input type="submit" value="Login" name="submit" /></td>
			     </tr>
		   </table>
		   </form>
		 </center>
		 </fieldset>
		 
	 </body>
	 </html>