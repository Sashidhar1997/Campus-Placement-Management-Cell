<%-- 
    Document   : stu_store.jsp
    Created on : 9 Mar, 2019, 2:45:30 PM
    
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
                String sid=request.getParameter("sid");
                String fname=request.getParameter("fname");
                String lname=request.getParameter("lname");
                String cgpa=request.getParameter("cgpa");
                String stream=request.getParameter("stream");
                 String thesis=request.getParameter("thesis");
                String email=request.getParameter("email");
                String pass=request.getParameter("pwd");
                String phone=request.getParameter("phno");
                Statement st=con.createStatement();
             
                if(sid.isEmpty() || fname.isEmpty() || lname.isEmpty() || cgpa.isEmpty() || stream.isEmpty() || email.isEmpty() || pass.isEmpty() || phone.isEmpty()){
                  out.println("<script> alert('Fileds should not be empty')</script>");
                //session.setAttribute("userid",email);
                 Thread.sleep(10);
                %>
                <jsp:include page="stu_register.jsp"></jsp:include>
                <%  
                }
                
                
            
            String q="insert into temp_student values('"+sid+"','"+fname+"','"+lname+"','"+pass+"','"+cgpa+"','"+stream+"','"+thesis+"','"+email+"','"+phone+"')";
           
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
                <jsp:include page="stu_login.jsp"></jsp:include>
                <%
               
            
            
        }
             
             
             
             
            
            catch(Exception e)
            {
                System.out.println(e);
            }
            
            
            
            
            
            %>
    
</html>
