<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<!doctype>
<html>
     <head>
	     <title></title>
	 </head>
	 <body>
	    <center><h1 style="color:tomato"><i>View Teacher INFO </i><h1></center>
		    <form method="post">
			
			    <table border="1" width="100%" style="background-color:pink">
					 <thead>
					    <tr>
						     <th><i>Sr.no</i></th>
				             <th><i>Teacher Name</i></th>
				             <th><i>Student Name</i></th>
							 <th><i>Student MObile No</i></th> 
							 <th><i>Complaint</i></th> 
							 <th><i>Update Action</i></th>
                             <th><i>Edit</i></th> 
							 <th><i>Delete</i></th> 
							 
						</tr>
					</thead>
					 <%
						
						
                         Connection con;
						 PreparedStatement ps;
	                     ResultSet rs;
						 
						 String TUserame = request.getParameter("TUserame");
						 
	                     String db="dboscr";
        	             String user="root";
	                     String pass="";
						 
			             Class.forName("com.mysql.jdbc.Driver");
			             con=DriverManager.getConnection("jdbc:mysql://localhost/"+db,user,pass);
			 
			         
			            ps=con.prepareStatement("SELECT tblscomplaint.number,tblcomplaint.tname,tblscomplaint.Sname,tblscomplaint.Smobno,tblscomplaint.upaction,tblscomplaint.tcomplaint FROM tblcomplaint LEFT JOIN (tblscomplaint) ON (tblscomplaint.tname=tblcomplaint.tname) where tblcomplaint.Uname=?;");
						ps.setString(1,TUserame);
						rs=ps.executeQuery();
			while(rs.next())
			 {
				 int number=rs.getInt("number");
	%>
					<tbody>
						<tr>
						     <td><%=rs.getInt("number")%></td>
				             <td><%=rs.getString("tname")%></td>
							 <td><%=rs.getString("Sname")%></td>
							 <td><%=rs.getString("Smobno")%></td>
							  <td><%=rs.getString("tcomplaint")%></td>
							 <td><%=rs.getString("upaction")%></td>
							 
				           
                             ` <td><a href="updateT.jsp?number=<%=number%>">Edit</a></td>
						     <td><a href="Delete.jsp?number=<%=number%>">Delete</a></td>
							 
						
						</tr>
					
					</tbody>
						<%
			 }
			 %>
			     </table>
		    </form>
		 </body>
</html>