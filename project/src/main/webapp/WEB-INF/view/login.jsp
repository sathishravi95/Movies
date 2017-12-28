<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <%@ include file="header.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body >
<div class="container">
  <form  action="${pageContext.request.contextPath}/login" method="post">
    <div class="form-group">
      <label for="username" style="color:black;" >UserName:</label>
      <input type="text" name="username" class="form-control"  placeholder="Enter username">
    </div>
    <div class="form-group">
      <label for="pwd"style="color:black;">Password:</label>
      <input type="password" name="password" class="form-control"  placeholder="Enter password">
    </div>
    <div class="checkbox" style="color:black;">
      <label><input type="checkbox" > Remember me</label>
    </div>
    <input type="submit" value="Submit" class="btn btn-success"/>
  </form>
</div>

</body>
</html>