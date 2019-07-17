<%-- 
    Document   : company_list.jsp
    Created on : 9 Mar, 2019, 6:25:55 PM
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/campus","root","");  
    Statement st=con.createStatement();
                    
    String email=(String)session.getAttribute("email");
    String query="select * from login where username='"+email+"'";
    ResultSet rs1=st.executeQuery(query);  
    if(!rs1.next()){    
              response.sendRedirect("admin.jsp");

    }
    
    %>


<!DOCTYPE html>
<html lang="en">
    <head>
<title>Placement_management cell</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel='stylesheet' href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="images/bootstrap.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style>
body {font-family: "Lato", sans-serif}
.mySlides {display: none}
</style></head>
<body>
<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="admin_home.jsp" class="w3-bar-item w3-button w3-padding-large">HOME</a>
    
     <a href="stu_list.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Student List</a>
     <a href="company_list.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Company List </a>   
     <a href="admin_compinbox.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Company Inbox </a>   
     <a href="admin_stuinbox.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Student Inbox </a>   

     <a href="logout.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Log Out<%= "       "+(String)session.getAttribute("email")%></a>
     <a href="#contact" class="w3-bar-item w3-button w3-padding-large w3-hide-small">CONTACT</a>
       
     
        
    <a href="javascript:void(0)" class="w3-padding-large w3-hover-red w3-hide-small w3-right"><i class="fa fa-search"></i></a>
  </div>
</div>

<!-- Navbar on small screens (remove the onclick attribute if you want the navbar to always show on top of the content when clicking on the links) -->
<div id="navDemo" class="w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:46px">
  <a href="#contact" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">CONTACT</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">MERCH</a>
</div>

<!-- Page content -->
<div class="w3-content" style="max-width:2000px;margin-top:46px">
    
       <!-- Company List -->

            <div>
                <div >
                <br /><br /><h3>Companies</h3>
                <table class="table" border="1">
    <thead>
      <tr>
        <th>Company Name</th>
        <th>Email id</th>
        <th>Seats Offered</th>
        <th>Min CGPA</th>
        <th>Mobile no</th>
        <th>About</th>
        <th>Recruitment Schedule</th>
        <th>Message</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
       <% 
            try{

            String q,id,fn,ln,p,s,ph,e,apt;
            int count=0;
            q="select * from company";
            ResultSet rs=st.executeQuery(q);
            String img;
            while(rs.next()){
                PreparedStatement stmt=con.prepareStatement("Select * from files where cname = ?");
     stmt.setString(1, rs.getString("cname"));
     ResultSet rs2=stmt.executeQuery();
     while(rs2.next()){
       img=rs2.getString(2);
                %><tr>
                    <td><%=rs.getString("cname") %></td>
                    <td><%=rs.getString("email") %></td>
                    <td><%=rs.getString("seats_offered") %></td>
                    <td><%=rs.getString("min_cgpa") %></td>
                    <td><%=rs.getString("phone") %></td>
                    <td><%=rs.getString("about") %></td>
                    <td>      <a href="images/<%=img%>">download</a></td>
                     <td> 
                      <form action="admin_msg_comp.jsp" method="GET" >
                           <input type="hidden" name="admin" value="admin">
                       <input type="hidden" name="cname" value="<%=rs.getString("cname")%>">
                       
            <button type="submit" name="submit" class="btn btn-primary" >Message</button>
                      </form>
                  </td>

                    <td>    <form action="admin_del_comp.jsp" method="GET" >
            <button type="submit" name="submit" class="btn btn-primary" value="<%= rs.getString("cname") %>">Delete</button>
                      </form>
                  </td>
                 
                </tr>
                <%} count++;
            }
            if(count==0){
                out.println("No Companies......");
            }
        }
        catch(Exception e){
            
        }

    
	       %> 
        
    </tbody>
  </table>

            </div>
            </div>
    
   
  <!-- The Contact Section -->
  <div class="w3-container w3-content w3-padding-64" style="max-width:800px" id="contact">
    <center><h2 class="w3-wide w3-center">CONTACT</h2>
    <div class="w3-row w3-padding-32">
      <div class="w3-col m6 w3-large w3-margin-bottom">
        <i class="fa fa-map-marker" style="width:30px"></i> Calicut, kerala<br>
        <i class="fa fa-phone" style="width:30px"></i> Phone: +91 8767899087<br>
        <i class="fa fa-envelope" style="width:30px"> </i> Email: admin@gmail.com<br>
        
      </div>
    </div>
        </center>
  </div>
  
<!-- End Page Content -->
</div>


<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity w3-light-grey w3-xlarge">
  <i class="fa fa-facebook-official w3-hover-opacity"></i>
  <i class="fa fa-instagram w3-hover-opacity"></i>
  <i class="fa fa-snapchat w3-hover-opacity"></i>
  <i class="fa fa-pinterest-p w3-hover-opacity"></i>
  <i class="fa fa-twitter w3-hover-opacity"></i>
  <i class="fa fa-linkedin w3-hover-opacity"></i>
</footer>

<script>
// Automatic Slideshow - change image every 4 seconds
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 4000);    
}

// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
  var x = document.getElementById("navDemo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}

// When the user clicks anywhere outside of the modal, close it
var modal = document.getElementById('ticketModal');
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>

</body>
</html>
