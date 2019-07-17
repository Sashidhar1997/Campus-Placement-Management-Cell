<%-- 
    Document   : stu_login_res.jsp
    Created on : 9 Mar, 2019, 2:33:17 PM
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
                
                if(email.isEmpty() || pass.isEmpty()){
                   out.println("<script> alert('Fileds should not be empty')</script>");
                //session.setAttribute("userid",email);
                 Thread.sleep(10);
                %>
                <jsp:include page="stu_login.jsp"></jsp:include>
                <%  
                }
                Statement st=con.createStatement();
            
            String q="select * from student where email='"+email+ "'and password='"+pass+"' ";
           
           ResultSet rs=st.executeQuery(q);  
            /*     String q="Insert into login values (?,?)";
              PreparedStatement pst=con.prepareStatement(q);
              pst.setString(1, email);
              pst.setString(2, passmailk     
              pst.executeUpdate();*/
              if(rs.first()){
                  String sid=rs.getString("sid");
                  
                out.println("<script> alert('Yes! Authorised student..')</script>");
                //session.setAttribute("userid",email);
                 Thread.sleep(10);
                  session.setAttribute("email",email);
                   session.setAttribute("sid",sid);
                %>
                <jsp:include page="student_home.jsp"></jsp:include>
                <%
               
            }
            else{
                  
                 out.println("<script> alert('Incorrect EmailId or Password')</script>");
               %>
                <jsp:include page="stu_login.jsp"></jsp:include>
                <%
            }
        }
             
             
             
             
            
            catch(Exception e)
            {
                System.out.println(e);
            }
            
            
            
            
            
            %>
    
</html>
