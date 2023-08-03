<%@page import ="java.sql.*"%>
<%@page import="java.util.*"%>
<%
    if(request.getParameter("submit")!=null)
	{
		String Number=request.getParameter("number");
		String Upaction=request.getParameter("Upaction");
		
		Connection con;
		PreparedStatement ps;
		
		
		String db="dboscr";
		String user="root";
		String pass="";
		
	    Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost/"+db,user,pass);
		ps=con.prepareStatement("update  tblscomplaint set upaction=? where number=?;");
		ps.setString(1,Upaction);
		ps.setString(2,Number);
		
		ps.executeUpdate();
		
		out.println(" Update Successfullly");
		
	}
	%>
<!doctype>
<html>
     <head>
	     <title>Update</title>
	 </head>
	 <body>
	     <center><h1>Update  Complaint</h1></center>
		     <fieldset>
		         <center>
		             <form method="post">
					 		 					 <input type="hidden" name="number" />

		                 <table>
						 <%		 
		

	String number= request.getParameter("number");
	
	
	 Connection con;
	 PreparedStatement ps;
	 ResultSet rs;
	 
	 String db="dboscr";
	 String user="root";
	 String pass="";
	
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost/"+db,user,pass);
	 
	 ps=con.prepareStatement("select * from tblscomplaint where number=?");
	 ps.setString(1,number);
	 
	 rs = ps.executeQuery();
	 
	 while(rs.next())
	 {
		 %>

						     <tr>
							     <td>Teacher Name : </td>
		                         <td><%=rs.getString("tname")%></td>
		                     </tr>
							 
							 <tr>
				                 <td>Student Name: </td>
					              <td><%=rs.getString("Sname")%></td>
							</tr>
							<tr>
					             <td>Student Mobile NO: </td>
					              <td><%=rs.getString("Smobno")%></td>
				             </tr>
		                     <tr>
		                         <td>Complaint Detalis : </td>
			                     <td><%=rs.getString("tcomplaint")%></td>
                             </tr>
			                <tr>
		                         <td>Update Action :  </td>
			                    
								 <td><textarea type="textarea"  rows="5"cols="20" required = "required" name ="Upaction"><%=rs.getString("upaction")%></textarea></td>
                             </tr>
							 <tr> 
		                         <td><input type="submit" name="submit" value="update"/></td>
		                     </tr>
							  <%
	 }
	 %>
					      </table>
				     </form>
			     </center>
			 </fieldset>
			 <a href="viewcomt.jsp">Go Back to Viewdata</a>
	 </body>
</html>
