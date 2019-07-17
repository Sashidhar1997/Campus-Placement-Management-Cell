<%-- 
    Document   : company_store.jsp
    Created on : 9 Mar, 2019, 3:04:35 PM
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
                String cname=request.getParameter("cname");
                String email=request.getParameter("email");
                String pass=request.getParameter("pwd");
                String seatsoffered=request.getParameter("seatsoffered");
                String salary=request.getParameter("salary");
                String mincgpabtech=request.getParameter("cgpabt");
                String mincgpamtech=request.getParameter("cgpamt");
                String mincgpamca=request.getParameter("cgpam");
                String phone=request.getParameter("phno");
                String about=request.getParameter("about");
                
                 if(cname.isEmpty() || seatsoffered.isEmpty() || mincgpabtech.isEmpty() ||mincgpamtech.isEmpty()|| mincgpamca.isEmpty()||salary.isEmpty() || about.isEmpty() || email.isEmpty() || pass.isEmpty() || phone.isEmpty()){
                  out.println("<script> alert('Fileds should not be empty')</script>");
                //session.setAttribute("userid",email);
                 Thread.sleep(10);
                %>
                <jsp:include page="company_register.jsp"></jsp:include>
                <%  
                }
                

                
                Statement st=con.createStatement();
            
            String q="insert into temp_company values('"+cname+"','"+email+"','"+pass+"','"+seatsoffered+"','"+salary+"','"+mincgpabtech+"','"+mincgpamtech+"','"+mincgpamca+"','"+phone+"','"+about+"')";
           
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
                <jsp:include page="company_login.jsp"></jsp:include>
                <%
               
            
            
        }
             
             
             
             
            
            catch(Exception e)
            {
                System.out.println(e);
            }
            
            
            
            
            
            %>
    
</html>
