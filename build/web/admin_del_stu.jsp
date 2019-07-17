
<!--
in Admin panel.... this is the jsp page which will delete the student and redirect to the list of students
-->

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
                //String cname=request.getParameter("submit");
                //String email=(String)session.getAttribute("email");
               // String sid=(String)session.getAttribute("sid");         
                Statement st=con.createStatement();
            String sid=request.getParameter("submit");
            String q="delete from student where sid='"+sid+"'";
           
            st.executeUpdate(q);
            /*     String q="Insert into login values (?,?)";
              PreparedStatement pst=con.prepareStatement(q);
              pst.setString(1, email);
              pst.setString(2, passmailk     
              pst.executeUpdate();*/
                out.println("<script> alert('Yes')</script>");
                //session.setAttribute("userid",email);
                 Thread.sleep(10);
                %>
                <jsp:include page="stu_list.jsp"></jsp:include>
                <%
               
            
        }
             
            catch(Exception e)
            {
                System.out.println(e);
            }
 
            %>
    
</html>
