<%-- 
    Document   : admin_msg_comp
    Created on : 15 Mar, 2019, 12:47:17 AM
    this page takes the input message from admin and gives the option to send to company
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
                String admin=request.getParameter("admin");
                String cname=request.getParameter("cname");
            /*     String q="Insert into login values (?,?)";
              PreparedStatement pst=con.prepareStatement(q);
              pst.setString(1, email);
              pst.setString(2, passmailk     
              pst.executeUpdate();*/
                     
                %>
                
                
                <form action="admin_msg_comp_res.jsp" method="GET">
                        <input type="hidden" name="admin" value="<%=request.getParameter("admin")%>">
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

