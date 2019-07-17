

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
                String sid=request.getParameter("sid");
                String msg=request.getParameter("msg");
        
                Statement st=con.createStatement();
            
                String q2="insert into msg_comp_to_stu(`cname`,`sid`,`message`) values('"+cname+"','"+sid+"','"+msg+"')";
                st.executeUpdate(q2);
                out.println("<script> alert('Yes')</script>");
                //session.setAttribute("userid",email);
                 Thread.sleep(10);
                 %>
                <jsp:include page="company_home.jsp"></jsp:include>
                <%
            
            
            }
            catch(Exception e)
            {
                System.out.println(e);
            }
            
            
            
            
            
            %>
    </body>
</html>

