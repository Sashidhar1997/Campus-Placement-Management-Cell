<%-- 
    Document   : message1.jsp
    Created on : 12 Mar, 2019, 4:11:41 PM
    Author     : sashidhar
--%>




<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
               
                       
          <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/campus","root","");  
                //String cname=request.getParameter("submit");
        
                Statement st=con.createStatement();
                String sid=request.getParameter("sid");
                String cname=request.getParameter("cname");
            /*     String q="Insert into login values (?,?)";
              PreparedStatement pst=con.prepareStatement(q);
              pst.setString(1, email);
              pst.setString(2, passmailk     
              pst.executeUpdate();*/
                     
                %>
                
                
                <form action="message_to_comp.jsp" method="GET">
                        <input type="hidden" name="sid" value="<%=request.getParameter("sid")%>">
                       <input type="hidden" name="cname" value="<%=request.getParameter("cname")%>">
                       <input type="text" name="msg" placeholder="Enter ur message here..">
                       <button type="submit" name="submit" class="btn btn-primary">Send Message</button>
                      

                        </form>
                
                
                
                
                <%
            
            
                              
            
        }
             
             
             
             
            
            catch(Exception e)
            {
                System.out.println(e);
            }
            
            
            
            
            
            %>
    
    </body>
</html>
