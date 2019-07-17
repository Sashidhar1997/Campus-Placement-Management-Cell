package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public final class company_005fhome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/campus","root","");  
    Statement st=con.createStatement();
                    
    String email=(String)session.getAttribute("email");
     String cname=(String)session.getAttribute("cname");
    String query="select * from company where email='"+email+"'";
    ResultSet rs1=st.executeQuery(query);  
    if(!rs1.next()){    
              response.sendRedirect("company_login.jsp");

    }
    
    
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("<title>Placement_management cell</title>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Lato\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("<link rel='stylesheet' href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" href=\"images/bootstrap.css\">\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("body {font-family: \"Lato\", sans-serif}\n");
      out.write(".mySlides {display: none}\n");
      out.write("</style></head>\n");
      out.write("<body>\n");
      out.write("    ");
 int a=Math.abs(10);
      out.write("\n");
      out.write("<!-- Navbar -->\n");
      out.write("<div class=\"w3-top\">\n");
      out.write("  <div class=\"w3-bar w3-black w3-card\">\n");
      out.write("    <a class=\"w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right\" href=\"javascript:void(0)\" onclick=\"myFunction()\" title=\"Toggle Navigation Menu\"><i class=\"fa fa-bars\"></i></a>\n");
      out.write("    <a href=\"company_home.jsp\" class=\"w3-bar-item w3-button w3-padding-large\">HOME</a>\n");
      out.write("    \n");
      out.write("     <a href=\"comp_edit_profile.jsp\" class=\"w3-bar-item w3-button w3-padding-large w3-hide-small\">Edit Profile</a>\n");
      out.write("     \n");
      out.write("     <a href=\"upload_schedule.jsp\" class=\"w3-bar-item w3-button w3-padding-large w3-hide-small\">Upload Schedule</a>\n");
      out.write("     <a href=\"comp_see_msgs.jsp\" class=\"w3-bar-item w3-button w3-padding-large w3-hide-small\">Messages</a>\n");
      out.write("  \n");
      out.write("     <a href=\"comp_to_admin.jsp\" class=\"w3-bar-item w3-button w3-padding-large w3-hide-small\">Contact Admin</a>\n");
      out.write("  \n");
      out.write("        <a href=\"logout.jsp\" class=\"w3-bar-item w3-button w3-padding-large w3-hide-small\">Log Out</a>\n");
      out.write("        <a href=\"#contact\" class=\"w3-bar-item w3-button w3-padding-large w3-hide-small\">CONTACT</a>\n");
      out.write("       \n");
      out.write("        \n");
      out.write("    <a href=\"javascript:void(0)\" class=\"w3-padding-large w3-hover-red w3-hide-small w3-right\"><i class=\"fa fa-search\"></i></a>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!-- Navbar on small screens (remove the onclick attribute if you want the navbar to always show on top of the content when clicking on the links) -->\n");
      out.write("<div id=\"navDemo\" class=\"w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium w3-top\" style=\"margin-top:46px\">\n");
      out.write("  <a href=\"#contact\" class=\"w3-bar-item w3-button w3-padding-large\" onclick=\"myFunction()\">CONTACT</a>\n");
      out.write("  <a href=\"#\" class=\"w3-bar-item w3-button w3-padding-large\" onclick=\"myFunction()\">MERCH</a>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!-- Page content -->\n");
      out.write("<div class=\"w3-content\" style=\"max-width:2000px;margin-top:46px\">\n");
      out.write("\n");
      out.write("       <!-- Student List -->\n");
      out.write("\n");
      out.write("            <div>\n");
      out.write("                <div >\n");
      out.write("                <br /><br /><h3>Students</h3>\n");
      out.write("                <table class=\"table\" border=\"1\">\n");
      out.write("    <thead>\n");
      out.write("      <tr>\n");
      out.write("        <th>Student id</th>\n");
      out.write("        <th>First Name</th>\n");
      out.write("        <th>Last Name</th>\n");
      out.write("        <th>CGPA</th>\n");
      out.write("\t<th>Stream</th>\n");
      out.write("        <th>Email</th>\n");
      out.write("        <th>Mobile no</th>\n");
      out.write("        <th>Resume</th>\n");
      out.write("        <th>Message</th>\n");
      out.write("      </tr>\n");
      out.write("    </thead>\n");
      out.write("    <tbody>\n");
      out.write("       ");
 
            try{

            String q,id,fn,ln,p,s,ph,e,apt;
            int count=0;
            q="select * from student where sid in (select sid from stu_comp where cname='"+cname+"')";
            ResultSet rs=st.executeQuery(q);
            String img;
            while(rs.next()){
                PreparedStatement stmt=con.prepareStatement("Select id,name from image where id = ?");
     stmt.setString(1, rs.getString("sid"));
     ResultSet rs2=stmt.executeQuery();
     while(rs2.next()){
       img=rs2.getString(2);
     
                
      out.write("<tr>\n");
      out.write("                    <td>");
      out.print(rs.getString("sid") );
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("firstname") );
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("lastname") );
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("cgpa") );
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("stream") );
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("email") );
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("phone") );
      out.write("</td>\n");
      out.write("                    <td>      <a href=\"images/");
      out.print(img);
      out.write("\">download</a></td>\n");
      out.write("                    <td><form action=\"message.jsp\" method=\"GET\">\n");
      out.write("                        <input type=\"hidden\" name=\"sid\" value=\"");
      out.print(rs.getString("sid"));
      out.write("\">\n");
      out.write("                       <input type=\"hidden\" name=\"cname\" value=\"");
      out.print((String)session.getAttribute("cname"));
      out.write("\">\n");
      out.write("                       <button type=\"submit\" name=\"submit\" class=\"btn btn-primary\">Message</button>\n");
      out.write("                      \n");
      out.write("\n");
      out.write("                        </form></td>\n");
      out.write("                </tr>\n");
      out.write("                ");
} count++;
            }
            if(count==0){
                out.println("No Students......");
            }
        }
        catch(Exception e){
            
        }

    
	       
      out.write(" \n");
      out.write("        \n");
      out.write("    </tbody>\n");
      out.write("  </table>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write(" \n");
      out.write("  <!-- The Contact Section -->\n");
      out.write("  <div class=\"w3-container w3-content w3-padding-64\" style=\"max-width:800px\" id=\"contact\">\n");
      out.write("    <center><h2 class=\"w3-wide w3-center\">CONTACT</h2>\n");
      out.write("    <div class=\"w3-row w3-padding-32\">\n");
      out.write("      <div class=\"w3-col m6 w3-large w3-margin-bottom\">\n");
      out.write("        <i class=\"fa fa-map-marker\" style=\"width:30px\"></i> Calicut, kerala<br>\n");
      out.write("        <i class=\"fa fa-phone\" style=\"width:30px\"></i> Phone: +91 8767899087<br>\n");
      out.write("        <i class=\"fa fa-envelope\" style=\"width:30px\"> </i> Email: admin@gmail.com<br>\n");
      out.write("        \n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("        </center>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("<!-- End Page Content -->\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- Footer -->\n");
      out.write("<footer class=\"w3-container w3-padding-64 w3-center w3-opacity w3-light-grey w3-xlarge\">\n");
      out.write("  <i class=\"fa fa-facebook-official w3-hover-opacity\"></i>\n");
      out.write("  <i class=\"fa fa-instagram w3-hover-opacity\"></i>\n");
      out.write("  <i class=\"fa fa-snapchat w3-hover-opacity\"></i>\n");
      out.write("  <i class=\"fa fa-pinterest-p w3-hover-opacity\"></i>\n");
      out.write("  <i class=\"fa fa-twitter w3-hover-opacity\"></i>\n");
      out.write("  <i class=\"fa fa-linkedin w3-hover-opacity\"></i>\n");
      out.write("</footer>\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("// Automatic Slideshow - change image every 4 seconds\n");
      out.write("var myIndex = 0;\n");
      out.write("carousel();\n");
      out.write("\n");
      out.write("function carousel() {\n");
      out.write("  var i;\n");
      out.write("  var x = document.getElementsByClassName(\"mySlides\");\n");
      out.write("  for (i = 0; i < x.length; i++) {\n");
      out.write("    x[i].style.display = \"none\";  \n");
      out.write("  }\n");
      out.write("  myIndex++;\n");
      out.write("  if (myIndex > x.length) {myIndex = 1}    \n");
      out.write("  x[myIndex-1].style.display = \"block\";  \n");
      out.write("  setTimeout(carousel, 4000);    \n");
      out.write("}\n");
      out.write("\n");
      out.write("// Used to toggle the menu on small screens when clicking on the menu button\n");
      out.write("function myFunction() {\n");
      out.write("  var x = document.getElementById(\"navDemo\");\n");
      out.write("  if (x.className.indexOf(\"w3-show\") == -1) {\n");
      out.write("    x.className += \" w3-show\";\n");
      out.write("  } else { \n");
      out.write("    x.className = x.className.replace(\" w3-show\", \"\");\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("\n");
      out.write("// When the user clicks anywhere outside of the modal, close it\n");
      out.write("var modal = document.getElementById('ticketModal');\n");
      out.write("window.onclick = function(event) {\n");
      out.write("  if (event.target == modal) {\n");
      out.write("    modal.style.display = \"none\";\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
