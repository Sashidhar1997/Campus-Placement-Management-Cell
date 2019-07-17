<%-- 
    Document   : comp_select_stu.jsp
   
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
                String sid=request.getParameter("sid");
        
                Statement st=con.createStatement();
            
            /*     String q="Insert into login values (?,?)";
              PreparedStatement pst=con.prepareStatement(q);
              pst.setString(1, email);
              pst.setString(2, passmailk     
              pst.executeUpdate();*/
                String firstname,lastname,email,password,stream,cgpa,phone;
               String q1="select * from student where sid='"+sid+"'";
            ResultSet rs=st.executeQuery(q1);
            if(rs.first()){
                firstname=rs.getString("firstname");
                lastname=rs.getString("lastname");
                password=rs.getString("password");
                cgpa=rs.getString("cgpa");
                stream=rs.getString("stream");
                email=rs.getString("email");
                phone=rs.getString("phone");
                
                String q2="insert into placed values('"+sid+"','"+firstname+"','"+lastname+"','"+password+"','"+cgpa+"','"+stream+"','"+email+"','"+phone+"','"+cname+"')";
                st.executeUpdate(q2);
                String q="delete from student where sid='"+sid+"'";
           
            st.executeUpdate(q);
            
                out.println("<script> alert('Yes')</script>");
                //session.setAttribute("userid",email);
                 Thread.sleep(10);
                %>
                <jsp:include page="company_home.jsp"></jsp:include>
                <%
 
            }
            else{
                out.println("<script> alert('No')</script>");
                //session.setAttribute("userid",email);
                 Thread.sleep(10);
                %>
                <jsp:include page="company_home.jsp"></jsp:include>
                <%
                
            }
            
            
                              
            
        }
             
             
             
             
            
            catch(Exception e)
            {
                System.out.println(e);
            }
            
            
            
            
            
            %>
    
</html>

