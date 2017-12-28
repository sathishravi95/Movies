<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@page isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="header.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>SignUp</title>
<style>
@CHARSET "ISO-8859-1";

@import "font-awesome.min.css";

@import "font-awesome-ie7.min.css";

body {
	background-color: ;
	padding-top: 20px;
	padding-bottom: 20px;
}

/* Everything but the jumbotron gets side spacing for mobile first views */
.header, .marketing, .footer {
	padding-right: 15px;
	padding-left: 15px;
}

/* Custom page header */
.header {
	border-bottom: 1px solid #e5e5e5;
}
/* Make the masthead heading the same height as the navigation */
.header h3 {
	padding-bottom: 19px;
	margin-top: 0;
	margin-bottom: 0;
	line-height: 40px;
}

/* Custom page footer */
.footer {
	padding-top: 19px;
	color: #777;
	border-top: 1px solid #e5e5e5;
}

/* Customize container */
@media ( min-width : 768px) {
	.container {
		max-width: 730px;
	}
}

.container-narrow>hr {
	margin: 30px 0;
}

/* Main marketing message and sign up button */
.jumbotron {
	text-align: center;
	border-bottom: 1px solid #e5e5e5;
}

.jumbotron .btn {
	padding: 14px 24px;
	font-size: 21px;
}

/* Supporting marketing content */
.marketing {
	margin: 40px 0;
}

.marketing p+h4 {
	margin-top: 28px;
}

/* Responsive: Portrait tablets and up */
@media screen and (min-width: 768px) {
	/* Remove the padding we set earlier */
	.header, .marketing, .footer {
		padding-right: 0;
		padding-left: 0;
	}
	/* Space out the masthead */
	.header {
		margin-bottom: 30px;
	}
	/* Remove the bottom border on the jumbotron for visual effect */
	.jumbotron {
		border-bottom: 0;
	}
}
<type="text/css">
.error {
	color: red;
}
</style>
</head>
<body>
	<div class="container">
		<h1 style="text-align: center;" class="well">Create Account</h1>
		<div class="col-lg-12 well">
			<div class="row">
				<sf:form action="signup" modelAttribute="user" method="POST">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<sf:label path="fname">First Name </sf:label> <sf:input type="text"
									placeholder="Enter First Name Here.." class="form-control"
									path="fname"/><sf:errors path="fname" cssClass="error"></sf:errors>
							</div>
							<div class="col-sm-6 form-group">
								<sf:label path="lname">Last Name</sf:label> <sf:input type="text"
									placeholder="Enter Last Name Here.." class="form-control"
									path="lname"/><sf:errors path="lname" cssClass="error"></sf:errors>
							</div>
						</div>
						

						<div class="form-group">
							<sf:label path="phonenumber">Phone Number</sf:label> <sf:input type="text"
								placeholder="Enter Phone Number Here.." class="form-control"
								path="phonenumber"/><sf:errors path="phonenumber" cssClass="error"></sf:errors>
						</div>
						<div class="form-group">
							<sf:label path="email">Email Address</sf:label> <sf:input type="text"
								placeholder="Enter Email Address Here.." class="form-control"
								path="email"/><sf:errors path="email" cssClass="error"></sf:errors>
						</div>
						<div class="form-group">
							<sf:label path="username">User Name</sf:label> <sf:input type="text"
								placeholder="Enter username Here.." class="form-control"
								path="username"/><sf:errors path="username" cssClass="error"></sf:errors>
						</div>
						<div class="form-group">
							<sf:label path="password">password</sf:label> <sf:input type="password"
								placeholder="Enter password Here.." class="form-control"
								path="password"/><sf:errors path="password" cssClass="error"></sf:errors>
						</div>
						<button type="Submit" class="btn btn-lg btn-info">Submit</button>
					</div>
				</sf:form>
			</div>
		</div>
	</div>
</body>
</html>