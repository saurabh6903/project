<%@ page import="java.sql.*"%>
<%@page import = "java.util.*"%>
<%
if (request.getParameter("Pno")!=null)
{
String Pno =request.getParameter("Pno");


Connection con;
PreparedStatement ps;
String db="dbappointments";
String user="root";
String pass="";

Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/"+db,user,pass);

ps=con.prepareStatement("delete from tblallapointments where Pno=?");

ps.setString(1,Pno);

out.println(" Appointment Deleted SuccessFully");
ps.executeUpdate(); 
}
%>
<a href="allappointments.jsp">back to Allappointments</a>