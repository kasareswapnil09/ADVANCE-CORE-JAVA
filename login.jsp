<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>   
Body {  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color: white;  
}  
button {   
       background-color: #4CAF50;   
       width: 100%;  
        color: orange;   
        padding: 15px;   
        margin: 10px 0px;   
        border: none;   
        cursor: pointer;   
         }   
 form {   
        border: 3px solid #f1f1f1;   
    }   
 input[type=text], input[type=password] {   
        width: 100%;   
        margin: 8px 0;  
        padding: 12px 20px;   
        display: inline-block;   
        border: 2px solid green;   
        box-sizing: border-box;   
    }  
 button:hover {   
        opacity: 0.7;   
    }   
  .cancelbtn {   
        width: auto;   
        padding: 10px 18px;  
        margin: 10px 5px;  
    }   
        
     
 .container {   
        padding: 25px;   
        background-color: lightblue;  
    }   
</style>
 <%@ include file="Header.jsp" %>
</head>
<body>
<br><br><br><br><br>
<!-- <h2>Login Form</h2> -->
<!--     <form action="Home.jsp" method="post"> -->
<!--         <label for="user">UserName :</label> -->
<!--         <input type="text" id="user" name="user"> -->
<!--         <label for="pass">Password :</label> -->
<!--         <input type="text" id="pass" name="pass"> -->
<!--         <button type="submit">Login</button> -->
<!--     </form> -->
    
    <center> <h1> Login Form </h1> </center>   
    <form action="Home.jsp" method="post">  
        <div class="container">   
            <label for="user">Username : </label>   
            <input type="text" placeholder="Enter Username" name="user" id="user" required>  
            <label>Password : </label>   
            <input type="text"  placeholder="Enter Password" id="pass" name="pass" required>  
            <button type="submit">Login</button>   
            <input type="checkbox" checked="checked"> Remember me   
            <button type="button" class="cancelbtn"> Cancel</button>   
            Forgot <a href="#"> password? </a><br> 
            <h2><a href="UserRegistration.jsp">Registration form...</a></h2>  
        </div>   
    </form>     
</body>
</html>