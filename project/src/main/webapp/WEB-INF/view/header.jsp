
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Movies<sub>prime</sub></a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="/project">Home</a></li>
				<li><a href="aboutus">About Us</a></li>
				   <security:authorize access="isAuthenticated()">
				
                <li><a href="Movies">View Movies</a></li>
                  <li><a href="category">Category</a></li>
                  <li><a href="Cart">Cart</a></li>
		     </security:authorize>
			</ul>
			
			<ul class="nav navbar-nav navbar-right">
			<security:authorize access="isAnonymous()">
				<li><a href="register"><span
						class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li><a href="login"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
                   </security:authorize>
                  </ul>
                  <ul class="nav navbar-nav navbar-right">
                  <security:authorize access="isAuthenticated()">
                  <li><a href="" style="text-align:center;color:white;">WELCOME
                  <security:authentication property="principal.username"/></a></li>
                  
                  <li><a href="logout" style="text-align:center;color:white;"><span
						class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                   </security:authorize>
		</ul>
		</div>
		
	</nav>
	</html>