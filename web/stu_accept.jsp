<%-- 
    Document   : stu_accept
    Created on : 14 Mar, 2019, 4:55:07 PM
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
<body>        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/campus","root","");  
                String sid=request.getParameter("submit");        
                Statement st=con.createStatement();
                String id,mail,password,fname,cgpa,phone,lname,stream,email,thesis;
                out.println("<script> alert('Yes')</script>");
       
               String q1="select * from temp_student where sid="+sid+" ";
            ResultSet rs=st.executeQuery(q1);
            if(rs.first()){
                //id=rs.getString("sid");
                fname=rs.getString("firstname");
                lname=rs.getString("lastname");
                password=rs.getString("password");
                cgpa=rs.getString("cgpa");
                stream=rs.getString("stream");
                thesis=rs.getString("thesis");
                email=rs.getString("email");
                phone=rs.getString("phone");                
                String q2="insert into student values("+sid+",'"+fname+"','"+lname+"','"+password+"','"+cgpa+"','"+stream+"','"+thesis+"','"+email+"','"+phone+"')";
                st.executeUpdate(q2);
                String q="delete from temp_student where email='"+email+"'";          
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
</body>
</html>


