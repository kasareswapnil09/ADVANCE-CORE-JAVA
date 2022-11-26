<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>User Registration</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<%@ include file="Header.jsp" %>

<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>

</head>
<body>
<%@ include file="Header.jsp" %>
<br>
<br>
<br>
<br>

<!--  <form action="Register" method="post"> -->
<!--  <table> -->
<!--  <tr> -->
<!--  <td>User Name</td> -->
<!--  <td><input type="text" name="uname"></td> -->
<!--  </tr> -->
<!--  <tr> -->
<!--  <td>Password</td> -->
<!--  <td><input type="password" name="password"></td> -->
<!--  </tr> -->
<!--  <tr> -->
<!--  <td>Email</td> -->
<!--  <td><input type="text" name="email"></td> -->
<!--  </tr> -->
<!--  <tr> -->
<!--  <td>Phone</td> -->
<!--  <td><input type="text" name="phone"></td> -->
<!--  </tr> -->
<!--  <tr> -->
<!--  <td></td> -->
<!--  <td><input type="submit" value="Register"></td> -->
<!--  </tr> -->
<!--  <div class="container signin"> -->
<!--     <p>Already have an account? <a href="login.jsp">Login in..</a>.</p> -->
<!--   </div> -->
<!--  </table> -->
<!--  </form> -->

 <!--theee-------------------------------------- -->
 <form action="Register" method="post">
  <div class="container">
    <center>
    <h1>Register Form </h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
    </center>

    <label for="uname"><b>User Name</b></label>
    <input type="text" name="name" placeholder="Enter User Name"  id="uname" required>

    <label for="password"><b>Password</b></label>
    <input type="password" name="pass" placeholder="Enter Password"  id="password" required>

    <label for="email"><b>Email</b></label>
    <input input type="text" name="email" placeholder="Enter Email Id" id="email" required>

    
    <label for="phone"><b>Repeat Password</b></label>
    <input type="text" name="phone" placeholder="Enter Phone No" id="phone" required>
    <hr>
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

    <button type="submit" value="Register">Register</button>
  </div>
  
  <div class="container signin">
    <p>Already have an account? <a href="login.jsp">Login in..</a>.</p>
  </div>
</form>
 
</body>
</html>