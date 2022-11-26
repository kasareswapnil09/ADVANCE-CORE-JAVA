<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Uploaded Image here....</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<%@ include file="Header.jsp" %>
</head>
<body>
<br><br><br><br><br><br>
<h1 style="color:green" align="center">DISPLAY IMAGE DETAILS</h1>

<div align="center">
<form action="DisplayServlet" method="post">
Enter Image Id:--
<input type="number" name="imageId">
<input type="submit" value="Display Image">
</form>
</div>

<hr>

<%
   String imgFillName=(String)request.getAttribute("img");
   String imgId=(String)request.getAttribute("id");
   System.out.println(imgFillName);
%>

<div align="center">
<table border="5px" style="width:600px">
<tr>
<th>Image Id</th>
<th>Image File Name</th>
</tr>

<% 
   if(imgFillName!="" && imgId!="")
   {
%>

<tr>
<td><%=imgId %></td>
<td><img  src="images/<%=imgFillName %>" style="width:300px; height:250px"></td>
</tr>

<%
   }
%>

</table>
</div>

</body>
</html>