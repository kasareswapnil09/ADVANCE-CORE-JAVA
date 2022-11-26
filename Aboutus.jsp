<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<%@ include file="Header.jsp" %>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}

</style>
</head>

<body>
<br><br><br><br><br><br>
<div class="about-section">
  <h1>About Us Page</h1>
  <p>Logo Image Editing provide the best provided with storing.</p>
  <p>Resize the images will adding images and uploading image to storing to local setup 
  and Word counting in Efficient way to app Provide</p>
</div>

<h2 style="text-align:center">Our Team Ambition </h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="https://cdn.iconscout.com/icon/premium/png-256-thumb/word-count-wordcountchecker-file-35737.png" alt="CountApp" style="width:100%">
      <div class="container">
        <h2>Word Counting App</h2>
        <p class="title">Word Counting App</p>
        <p>This is will be Counting App Helpful all the purpose .etc.Govt exam ,restriction word.</p>
        <p>swapnilkasare11@gmail.com</p>
        <p><a href="Contact.jsp"><button class="button">Contact</button></a></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="https://media.istockphoto.com/id/1182308819/photo/download-icon.jpg?s=612x612&w=0&k=20&c=8DFXr5yyogqP0DCaFgUCBL-aiINOGswn9j-_WKqgWX4=" alt="Upload" style="width:100%">
      <div class="container">
        <h2>Add Images</h2>
        <p class="title">Adding and Storing images</p>
        <p>Adding images any type of the jpg or png with size adding in database</p>
        <p>swapnilkasare11@gmail.com</p>
        <p><a href="Contact.jsp"><button class="button">Contact</button></a></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="https://media.istockphoto.com/id/1131347400/vector/monitor-vector-logo-icon.jpg?s=170667a&w=0&k=20&c=DfJxUVkl9FLQFySz6AHoCQ8DWVSpvJidnES9-rLX4HM=" alt="upload" style="width:100%">
      <div class="container">
        <h2>Display Images Data</h2>
        <p class="title">Disaply images with id</p>
        <p>Your check the database images Details of with id. </p>
        <p>swpanilkasare11@gmail.com</p>
        <p><a href="Contact.jsp"><button class="button">Contact</button></a></p>
      </div>
    </div>
  </div>
</div>
</body>
</html>