<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
​
<title>Address</title>
<%@ include file="header.jsp"%>
</head>
<body>
<div class="container">
<style>

h2   {color: black;font-size: 50}
label
{
font-size: 32;
font-family:Times New Roman;
color:Green;
}
</style>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>


  <h2>User Address Information</h2>
  
  <sf:form action="${pageContext.request.contextPath}/usadd/${user.id}" modelAttribute="address">
  
   <div class="form-group">
      <label for="Door Number">Door Number:</label>
      <sf:input type="text" style="width:600px;" class="form-control" id="txt" placeholder="Enter your Door Number" path="dnumber"/>
       <sf:errors path="dnumber"></sf:errors>
    </div>
    
     <div class="form-group">
      <label for="Street Number">Street Name:</label>
      <sf:input type="text" style="width:600px;" class="form-control"  id="txt" placeholder="Enter Your Street Number" path="stname"/>
      <sf:errors path="stname"></sf:errors>
    </div>
     <div class="form-group">
      <label for="Area">Area:</label>
      <sf:input type="text" style="width:600px;" class="form-control" id="txt" placeholder="Enter Your Area" path="area"/>
    <sf:errors path="area"></sf:errors>
    </div>
    
     <div class="form-group">
      <label for="Pincode">Pincode:</label>
      <sf:input type="text" style="width:600px;" class="form-control" id="pwd" placeholder="Enter Your Pincode" path="pincode"/>
       <sf:errors path="pincode"></sf:errors>
    </div>
   <button type="submit" class="btn btn-primary" value="Submit">Submit</button>    
  </sf:form>
  </div>

 
</body>

</body>
</html>