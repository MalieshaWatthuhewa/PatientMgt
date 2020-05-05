<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.Patient"  %>   
    
    
    <!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/patient.js"></script>
<meta charset="ISO-8859-1">


</head>
<body>


<div class="container">
<div class="row">
<div class="col-6">

<h1>Patient Management</h1>
<form id="formItem" name="formItem" method="post" action="patient.jsp">
Name:
<input id="pName" name="pName" type="text"
class="form-control form-control-sm">
<br>Address:
<input id="pAddress" name="pAddress" type="text"
class="form-control form-control-sm">
<br> Age:
<input id="pAge" name="pAge" type="text"
class="form-control form-control-sm">
<br> NIC:
<input id="pNIC" name="pNIC" type="text"
class="form-control form-control-sm">
<br>
<input id="btnSave" name="btnSave" type="button" value="Save"
class="btn btn-primary">
<input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">
</form>


<div id="alertSuccess" class="alert alert-success"></div>

<div id="alertError" class="alert alert-danger"></div>
  
   <br>
   
   <%
   
      Patient patObj = new Patient();
      out.print(patObj.readItems());
   %>
   
   
   </div>
   </div>
   </div>


</body>
</html>