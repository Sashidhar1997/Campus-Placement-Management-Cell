


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/campus","root","");  
    Statement st=con.createStatement();
                    
    //String email=(String)session.getAttribute("email");
    String sid=(String)session.getAttribute("sid");
    String email=(String)session.getAttribute("email");
    String q="select * from student where email='"+email+ "'";
    ResultSet rs=st.executeQuery(q);  
   if(!rs.next()){    
             response.sendRedirect("stu_login.jsp");

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
    <% int a=Math.abs(10);%>
<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
<a href="student_home.jsp" class="w3-bar-item w3-button w3-padding-large">HOME</a>
    
     <a href="stu_edit_profile.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Edit Profile</a>
        <a href="stu_comp_applied.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Companies Applied</a>
        <a href="upload_resume.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Upload Resume</a>
        <a href="stu_see_msgs.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Messages</a>
        <a href="stu_admininbox.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Contact Admin</a>
  
        <a href="logout.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Log Out</a>
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
    
  
        
 <div class="panel-body">
     <%
try{

//String sql ="select * from users where id="+id;
//resultSet = statement.executeQuery(sql
    String query="select * from student where email='"+email+ "'";
    ResultSet rs1=st.executeQuery(query);  
while(rs1.next()){
%>
                     <form class="signup-form" action="stu_update.jsp" method="post">
                         <div class="form-group">
                          <label for="sid">sid:</label>
                         <input type="text" class="form-control"  name="sid" value="<%=rs1.getString("sid") %>" readonly="readonly">
                         </div>

                        <div class="form-group">
                          <label for="fname">First Name:</label>
                          <input type="text" class="form-control" name="fname" value="<%=rs1.getString("firstname") %>">
                        </div>

                        <div class="form-group"> 
                          <label for="lname">Last Name:</label>
                          <input type="text" class="form-control" name="lname" value="<%=rs1.getString("lastname") %>">
                        </div>
                        <div class="form-group">
                          <label for="pwd">Password:</label>
                          <input type="password" class="form-control" name="pwd" value="<%=rs1.getString("password") %>">
                        </div>
                        <div class="form-group">
                          <label for="cgpa">CGPA:</label>
                          <input type="text" class="form-control" name="cgpa" value="<%=rs1.getString("cgpa") %>">
                        </div>
                        <div class="form-group">
                          <label for="stream">Stream:</label>
                          <select name="stream">
                          <option value="<%=rs1.getString("stream") %>"><%=rs1.getString("stream") %></option>
                          <!--<option value="saab">BTECH</option>
                          <option value="opel">MTECH</option>
                          <option value="audi">PHD</option>-->
                        </select>
                      </div>
                     <input type="hidden" name="stream" value="<%=rs1.getString("stream") %>">
                        <div class="form-group"> 
                          <label for="email">Email:</label>
                          <input type="email" class="form-control" name="email" value="<%=rs1.getString("email") %>" readonly="readonly">
                        </div>
                        
                        <div class="form-group">
                          <label for="phno">Phone No:</label>
                          <input type="text" class="form-control" name="phno" value="<%=rs1.getString("phone") %>">
                        </div>

                        

                         <input type="submit" name="submit" value="Update">  
                        <br><br>
                        </form>
     




<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

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
