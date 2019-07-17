<%-- 
    Document   : stu_view_resume
    Created on : 11 Mar, 2019, 11:53:34 AM
    
--%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        //    String img="nnnn.jpeg";
         
     try{
         
     String studentid=request.getParameter("sid");
   Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/campus","root",""); 
        PreparedStatement stmt=con.prepareStatement("Select id,name from image where id = ?");
     stmt.setString(1, studentid);
     ResultSet rs=stmt.executeQuery();
        //  Statement st=con.createStatement();
   //ResultSet rs=st.executeQuery("Select id,name from image where id ='"+studentid+"'"); 
   
   %>
  <table cellpadding="15" border="1">
  <%
    while(rs.next()){
       String img=rs.getString(2);
  %>
  <tr>
    <td>
        <a href="images/<%=img%>">download</a>
       
    </tr>
 <%}
 
 %>
</table>
 <%
     }
     catch(Exception e)
     {
         out.println(e);
     }
 
 %>
         
    </body>
</html>

