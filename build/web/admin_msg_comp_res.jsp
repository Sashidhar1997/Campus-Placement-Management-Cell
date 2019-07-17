<%-- 
    Document   : admin_msg_comp_res
    Created on : 15 Mar, 2019, 12:50:39 AM
    this page checks the response of the message sent from admin to company whether it has been sent or not
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
    <body>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/campus","root","");  
                String cname=request.getParameter("cname");
                String admin=request.getParameter("admin");
                String msg=request.getParameter("msg");
        
                Statement st=con.createStatement();
            
                String q2="insert into comp_to_admin(`from_add`,`to_add`,`message`) values('"+admin+"','"+cname+"','"+msg+"')";
                st.executeUpdate(q2);
                out.println("<script> alert('Yes')</script>");
                //session.setAttribute("userid",email);
                 Thread.sleep(10);
                 %>
                <jsp:include page="admin_compinbox.jsp"></jsp:include>
                <%
            
            
            }
            catch(Exception e)
            {
                System.out.println(e);
            }
            
            
            
            
            
            %>
    </body>
</html>

