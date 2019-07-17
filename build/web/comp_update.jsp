<%-- 
    Document   : comp_update
    Created on : 11 Mar, 2019, 9:30:27 PM
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>


<%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/campus","root","");  
                String email=(String)session.getAttribute("email");
              //  String pass=request.getParameter("pwd");
                Statement st=con.createStatement();
            out.println(email);
            String q="select * from company where email='"+email+ "'";
           
           ResultSet rs=st.executeQuery(q);  

              if(rs.first()){

                        String cname = request.getParameter("cname");                       
                        String mail=request.getParameter("mail");
                        String pass1=request.getParameter("pwd");
                        String seats = request.getParameter("seats");
                        String cgpa=request.getParameter("cgpa");
                        String phone=request.getParameter("phone");
                        String about=request.getParameter("about");
 
if(cname != null)
{
//Connection con = null;
PreparedStatement ps = null;
//int personID = Integer.parseInt(id);
try
{
//Class.forName(driverName);
//con = DriverManager.getConnection(url,user,psw);
//String sql="Update student set (cname,password,seats_offerede,min_cgpa,phone,about) values(?,?,?,?,?,?)where email="+mail;
String sql="Update company set cname=?,email=?,password=?,seats_offered=?,min_cgpa=?,phone=?,about=? where email='"+email+"'";
ps = con.prepareStatement(sql);

ps.setString(1, cname);
ps.setString(2, email);
ps.setString(3, pass1);
ps.setString(4, seats);
ps.setString(5, cgpa);
ps.setString(6, phone);
ps.setString(7, about);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("<script>alert('Record Updated Successfully')</script>");

                %>
                <jsp:include page="comp_edit_profile.jsp"></jsp:include>
                <%
}
else
{
out.print("<script>alert('There is a problem in updating Record')</script>");
                %>
                <jsp:include page="comp_edit_profile.jsp"></jsp:include>
                <%
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
              }
            }
catch(Exception e)
            {
                System.out.println(e);
            }
            
            
            
            
            
            %>