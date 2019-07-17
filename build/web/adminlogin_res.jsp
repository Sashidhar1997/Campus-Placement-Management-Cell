<%-- 
    Document   : adminlogin_res.jsp
    Created on : 8 Mar, 2019, 3:13:16 PM
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/campus","root","");  
                String email=request.getParameter("email");
                String pass=request.getParameter("pwd");
                
                Statement st=con.createStatement();
                if(email.isEmpty() || pass.isEmpty()){
                   out.println("<script> alert('Fileds should not be empty')</script>");
                //session.setAttribute("userid",email);
                 Thread.sleep(10);
                %>
                <jsp:include page="admin.jsp"></jsp:include>
                <%  
                }
 
                
            
            String q="select * from login where username='"+email+ "'and password='"+pass+"' ";
           
           ResultSet rs=st.executeQuery(q);  
            /*     String q="Insert into login values (?,?)";
              PreparedStatement pst=con.prepareStatement(q);
              pst.setString(1, email);
              pst.setString(2, passmailk     
              pst.executeUpdate();*/
              if(rs.first()){
                out.println("<script> alert('Yes ! you are authorised admin')</script>");
                //session.setAttribute("userid",email);
                 Thread.sleep(10);
                 session.setAttribute("email",email);
                %>
                <jsp:include page="admin_home.jsp"></jsp:include>
                <%
               
            }
            else{
                  
                   
                 out.println("<script> alert('Incorrect Emailid or password')</script>");
                Thread.sleep(10);
                %>
                <jsp:include page="admin_login.jsp"></jsp:include>
                <%
            }
        }
             
             
             
             
            
            catch(Exception e)
            {
                System.out.println(e);
            }
            
            
            
            
            
            %>
    
</html>
