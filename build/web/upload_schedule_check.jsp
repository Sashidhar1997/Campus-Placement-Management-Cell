<%-- 
    Document   : upload_schedule_check
    Created on : 11 Mar, 2019, 2:44:26 PM
    
--%>

<%@page import="java.sql.*"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
          String cname=request.getParameter("cname");
          String res=request.getParameter("doctimg");
          String type,success=null;
        res=request.getParameter("doctimg");
        //String email=sid.substring(0, sid.length() - 4);
        String email=cname;
       type=res.substring(res.indexOf("/")+1,res.indexOf(";"));
       int k=res.indexOf(",");
       String st= res.substring(k+1,res.length());
       try
       {
           byte[] btDataFile = new sun.misc.BASE64Decoder().decodeBuffer(st);
           File ff = new File("/home/sashidhar/NetBeansProjects/Campus_placement_management_cell/Campus_placement_management_cell/web/images/"+email+"."+type);
           
           FileOutputStream osf = new FileOutputStream(ff);
           osf.write(btDataFile);
           osf.flush();
           osf.close();
           success=email+"."+type;
       }catch(IOException e)
       {
           System.out.print(e);
       }

if(success==null)
{
   out.println("Sorry File Not uploaded try again"); 
}
else
{
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/campus","root","");  
          String sql = "INSERT INTO files values (?,?)";
            PreparedStatement stmt = con.prepareStatement(sql);
         //   stmt.setString(1,"10");
             stmt.setString(1,cname);
             stmt.setString(2,success);
             int row = stmt.executeUpdate();
             if(row>0)
             {
                  out.println("<script> alert('Uploaded Successfully')</script>");
                //session.setAttribute("userid",email);
                 Thread.sleep(10);
                %>
                <jsp:include page="upload_schedule.jsp"></jsp:include>
                <%
             }
             else
             {
                 out.println("<script> alert('Upload Failed')</script>");
                //session.setAttribute("userid",email);
                 Thread.sleep(10);
                %>
                <jsp:include page="upload_schedule.jsp"></jsp:include>
                <%
             }
    }
    catch(Exception e)
    {
        out.println(e);
    }
}

          %>
    </body>
</html>

