<%@page import="java.sql.*" %>
<%@ page import="java.util.*"%>
 
<%
    
   
		String number=request.getParameter("number");
       
        
		Connection con;
        PreparedStatement ps;
		String db = "dboscr";
     	String user = "root"; 
		String password = "";
      
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/" + db, user, password);
		
        ps= con.prepareStatement("delete from  tblscomplaint  where number=?;");
        
        ps.setString(1,number);
	    ps.executeUpdate();
		
		response.sendRedirect("viewcomt.jsp");
		
	
%>
