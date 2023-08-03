<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<!doctype>
<html>
     <head>
	     <title>All Teachers Information</title>
	 </head>
	 <body>
	    <center><h1 style="color:tomato"><i>All View Teacher INFO </i><h1></center>
		    <form method="post">
			
			    <table border="1" width="100%" style="background-color:pink">
					 <thead>
					    <tr>
						     <th><i>Sr.no</i></th>
				             <th><i>Teacher Name</i></th>
				             <th><i>Complaint</i></th>
						</tr>
					</thead>
					 <%
						
						
                         Connection con;
						 ResultSet rs;
						 
	                     String db="dboscr";
        	             String user="root";
	                     String pass="";
						 
			             Class.forName("com.mysql.jdbc.Driver");
			             con=DriverManager.getConnection("jdbc:mysql://localhost/"+db,user,pass);
			 
			         Statement st=con.createStatement();
			            rs=st.executeQuery("Select * from tblcomplaint ");
						
						
			while(rs.next())
			 {
				 int number=rs.getInt("number");
	%>
					<tbody>
						<tr>
						     <td><%=rs.getInt("number")%></td>
				             <td><%=rs.getString("tname")%></td>
			            	
					     <td><input type="radio" name="Complaint" value=<%=rs.getString("tname")%> required = "required"/><a href="CR.jsp?number=<%=number%>">Complaint</a></td>
					</tr>
					</tbody>
						<%
			 }
			 %>
			     </table>
		    </form>
		 </body>
</html>