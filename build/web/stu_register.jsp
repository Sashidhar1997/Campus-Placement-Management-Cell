<!DOCTYPE html>
<html lang="en">
<title>Student Registration Form</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
body {font-family: "Lato", sans-serif}
.mySlides {display: none}
</style>
<body>
<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="index.html" class="w3-bar-item w3-button w3-padding-large">HOME</a>
    
     <a href="admin.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">ADMIN</a>
     
    <div class="w3-dropdown-hover w3-hide-small">
      <button class="w3-padding-large w3-button" title="More">STUDENT <i class="fa fa-caret-down"></i></button>     
      <div class="w3-dropdown-content w3-bar-block w3-card-4">
       <a href="stu_register.jsp" class="w3-bar-item w3-button">Register</a>
        <a href="stu_login.jsp" class="w3-bar-item w3-button">LogIn</a>
      </div>
   </div>
     <div class="w3-dropdown-hover w3-hide-small">
      <button class="w3-padding-large w3-button" title="More">COMPANY <i class="fa fa-caret-down"></i></button>     
      <div class="w3-dropdown-content w3-bar-block w3-card-4">
        <a href="company_register.jsp" class="w3-bar-item w3-button">Register</a>
        <a href="company_login.jsp" class="w3-bar-item w3-button">LogIn</a>
        
      </div>
    </div>
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
  <div class="container" >
    

<div class="container">
      
        <div class="col-sm-12 " style="padding-top: 20px;">
              
        </div>
      
  </div>

          <div class="container">
                     <div class="col-sm-12">       
            
             
                <div class="col-sm-6 " style="color: gray; padding-top: 90px">

                                    <h2 >PLACEMENT MANAGEMENT CELL</h2>
                      The major objective of campus placement is to identify the talented and qualified professionals before they complete their education.
        It provide employment opportunities to students who are pursuing or in the final stage of completing the course.
        This process reduces the time for an industry to pick the candidates according to their need.
        It is a cumbersome activity and hence majority of the companies find it difficult to trace the right talent.
        Many students do not understand the importance of placement training that is being imparted, whether it is an aptitude training or soft skills. 
        They show the least interest in this due to various factors viz., projects, assignments or more of activities loaded by the colleges as part of their curriculum thinking that it is not useful.
        It is the responsibility of the companies training on placement to make the students equipped on all aspects of career development along with creating a very good impact in them 
        which makes them feel every minute they spend in the placement training session is worth being there and will help them in getting placed in their dream companies.
           
              </div>
              <div class="col-sm-6" style="padding-left: 45px;">
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h2>Sign up now </h2>
                      </div>
                     
                      <div class="panel-body">
                      <form class="signup-form" action="stu_store.jsp" method="post">
                       <div class="form-group">
                          <label for="sid">Student Registration no:</label>
                          <input type="text" class="form-control" name="sid" placeholder="Student roll no">
                        </div>

                        <div class="form-group">
                          <label for="fname">First Name:</label>
                          <input type="text" class="form-control" name="fname" placeholder="first name" pattern="[a-zA-Z]{1,30}" title="FirstName does contain symbols and numbers">
                        </div>

                        <div class="form-group"> 
                          <label for="lname">Last Name:</label>
                          <input type="text" class="form-control" name="lname" placeholder="Last name" pattern="[a-zA-Z]{1,30}" title="LastName does contain symbols and numbers">
                        </div>
                        <div class="form-group">
                          <label for="pwd">Password:</label>
                          <input type="password" class="form-control" name="pwd" placeholder="Enter password">
                        </div>
                        <div class="form-group">
                          <label for="cgpa">CGPA:</label>
                          <input type="number" class="form-control" name="cgpa" placeholder="Enter cgpa" min="0" max="10" step="0.01">
                        </div>
                        <div class="form-group">
                          <label for="stream">Stream:</label>
                        <select name="stream">
                          <option value="MCA">MCA</option>
                          <option value="BTECH">BTECH</option>
                          <option value="MTECH">MTECH</option>
                          <option value="PHD">PHD</option>
                        </select>
                      </div>
                          
                          
                          <div class="form-group">
                          <label for="thesis">Thesis:</label>
                        <select name="thesis">
                          <option value="YES">YES</option>
                          <option value="NO">NO</option>
                        </select>
                      </div>
                          
                        <div class="form-group">
                          <label for="phno">Phone No:</label>
                          <input type="text" class="form-control" name="phno" placeholder="Enter Mobile No" pattern="[6-9][0-9]{9}">
                        </div>

                        <div class="form-group"> 
                          <label for="email">Email:</label>
                          <input type="email" class="form-control" name="email" placeholder="Enter email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" >
                        </div>

                         <input type="submit" name="submit" value="Sign Me Up">  
                        <br><br>
                        <a href="stu_login.jsp">Back To Log in</a>

                      </form>
                  </div>
              </div>
          </div>
         
 
        </div>
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
