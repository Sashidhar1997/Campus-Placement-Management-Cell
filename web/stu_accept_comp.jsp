<%-- 
    Document   : stu_accept_comp
    Created on : 10 Mar, 2019, 2:14:11 PM
   
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
    

        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/campus","root","");  
                String cname=request.getParameter("submit");
                      out.println(cname);         
                Statement st=con.createStatement();
                String sid=(String)session.getAttribute("sid");
            
            /*     String q="Insert into login values (?,?)";
              PreparedStatement pst=con.prepareStatement(q);
              pst.setString(1, email);
              pst.setString(2, passmailk     
              pst.executeUpdate();*/
               //String q1="select * from temp_company where cname='"+cname+"'";
  
                /**email=rs.getString("email");
                password=rs.getString("password");
                seatsoffered=rs.getString("seats_offered");
                mincgpa=rs.getString("min_cgpa");
                phone=rs.getString("phone");
                about=rs.getString("about");**/
                
                
                //String q2="insert into company values('"+cname+"','"+email+"','"+password+"','"+seatsoffered+"','"+mincgpa+"','"+phone+"','"+about+"')";
                String q2="insert into stu_comp values("+sid+",'"+cname+"')";
                st.executeUpdate(q2);
                          
                out.println("<script> alert('Registered for the company')</script>");
                Thread.sleep(10);
                %>
                <jsp:include page="student_home.jsp"></jsp:include>
                <%
                              
            }
                 
            catch(Exception e)
            {
                System.out.println(e);
            }
            
            
            
            
            
            %>
    </head>
</html>
