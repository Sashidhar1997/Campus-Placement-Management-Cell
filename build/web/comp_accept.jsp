<%-- 
    Document   : comp_accept.jsp
    Created on : 9 Mar, 2019, 4:11:39 
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
                String cname=request.getParameter("submit");
        
                Statement st=con.createStatement();
            
            /*     String q="Insert into login values (?,?)";
              PreparedStatement pst=con.prepareStatement(q);
              pst.setString(1, email);
              pst.setString(2, passmailk     
              pst.executeUpdate();*/
                String email,password,seatsoffered,mincgpa,phone,about,salary;
               String q1="select * from temp_company where cname='"+cname+"'";
            ResultSet rs=st.executeQuery(q1);
            if(rs.first()){
                email=rs.getString("email");
                password=rs.getString("password");
                seatsoffered=rs.getString("seats_offered");
                mincgpa=rs.getString("min_cgpa");
                salary=rs.getString("salary");
                phone=rs.getString("phone");
                about=rs.getString("about");
                
                String q2="insert into company values('"+cname+"','"+email+"','"+password+"','"+seatsoffered+"','"+salary+"','"+mincgpa+"','"+phone+"','"+about+"')";
                st.executeUpdate(q2);
                String q="delete from temp_company where cname='"+cname+"'";
           
            st.executeUpdate(q);
            
                out.println("<script> alert('Yes')</script>");
                //session.setAttribute("userid",email);
                 Thread.sleep(10);
                %>
                <jsp:include page="admin_home.jsp"></jsp:include>
                <%
 
            }
            else{
                out.println("<script> alert('No')</script>");
                //session.setAttribute("userid",email);
                 Thread.sleep(10);
                %>
                <jsp:include page="admin_home.jsp"></jsp:include>
                <%
                
            }
            
            
                              
            
        }
             
             
             
             
            
            catch(Exception e)
            {
                System.out.println(e);
            }
            
            
            
            
            
            %>
    
</html>

