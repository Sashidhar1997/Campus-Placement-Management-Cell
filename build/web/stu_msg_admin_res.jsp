<%-- 
    Document   : stu_msg_admin_res
    Created on : 15 Mar, 2019, 10:14:22 AM
    Author     : sashidhar
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
                String msg=request.getParameter("msg");
                String sid=request.getParameter("sid");
                String admin="admin";
        
                Statement st=con.createStatement();
            
                String q2="insert into stu_to_admin(`from_add`,`to_add`,`message`) values('"+sid+"','"+admin+"','"+msg+"')";
                st.executeUpdate(q2);
                out.println("<script> alert('Yes')</script>");
                //session.setAttribute("userid",email);
                 Thread.sleep(10);
                 %>
                <jsp:include page="stu_admininbox.jsp"></jsp:include>
                <%
                 
            
            }
            catch(Exception e)
            {
                System.out.println(e);
            }
            
            
            
            
            
            %>
           
    </body>
</html>



