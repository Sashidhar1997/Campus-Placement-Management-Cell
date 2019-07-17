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
                //String email=request.getParameter("email");
              //  String pass=request.getParameter("pwd");
        String email=(String)session.getAttribute("email");
        Statement st=con.createStatement();
            
        String q="select * from student where email='"+email+ "'";
           
        ResultSet rs=st.executeQuery(q);  

        if(rs.first())
        {

             String id = request.getParameter("sid");
             String first_name = request.getParameter("fname");
            String last_name=request.getParameter("lname");
             String pass1=request.getParameter("pwd");
             String cgpa=request.getParameter("cgpa");
             String stream=request.getParameter("stream");
             String mail=request.getParameter("email");
              String phone=request.getParameter("phno");
               

if(id != null)
{
//Connection con = null;
PreparedStatement ps = null;
//int personID = Integer.parseInt(id);
try
{
//Class.forName(driverName);
//con = DriverManager.getConnection(url,user,psw);
//String sql="Update student set (sid,firstname,lastname,password,cgpa,stream,email,phone) values(?,?,?,?,?,?,?,?)where sid='"+id+"'";
String sql="Update student set sid=?,firstname=?,lastname=?,password=?,cgpa=?,stream=?,email=?,phone=? where sid='"+id+"'";
//"Update student set firstname=?,lastname=?,password=?,cgpa=?,email=? where sid="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, first_name);
ps.setString(3, last_name);
ps.setString(4, pass1);
ps.setString(5, cgpa);
ps.setString(6, stream);
ps.setString(7, mail);
ps.setString(8, phone);

int i = ps.executeUpdate();
if(i > 0)
{
out.print("<script>alert('Record Updated Successfully')</script>");
                %>
                <jsp:include page="stu_edit_profile.jsp"></jsp:include>
                <%
}
else
{
out.print("<script>alert('There is a problem in updating Record')</script>");
                %>
                <jsp:include page="stu_edit_profile.jsp"></jsp:include>
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