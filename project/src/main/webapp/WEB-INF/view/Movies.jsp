
<!DOCTYPE html>



<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
​
</head>
<c:set value="${pageContext.request.contextPath }" var="context"></c:set>

<body>
	<%@ include file="header.jsp"%>
	<security:authorize access="hasRole('ROLE_ADMIN')">
		<sf:form action="${context}/addMovies" method="post"
			modelAttribute="movie">

			<fieldset>

				<!-- Form Name -->
				<legend>MOVIES</legend>
				<!-- Text input-->
				<sf:hidden path="id" />
				<div class="form-group">


					<sf:label class="col-md-12 control-label" for="movies_name"
						path="moviesname">MOVIES NAME</sf:label>
					<div class="col-md-12" align="center">
						<sf:errors path="moviesname"></sf:errors>

						<sf:input id="movies_name" name="movies_name"
							placeholder="MOVIES NAME" class="form-control input-md"
							required="" type="text" path="moviesname" />
						<sf:errors path="moviesname"></sf:errors>

					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<sf:label class="col-md-12 control-label" for="movie_description"
						path="moviesdescription">MOVIES DESCRIPTION </sf:label>
					<div class="col-md-12" align="center">
						<sf:input id="movies_description" name="movies_description"
							placeholder="MOVIES DESCRIPTION " class="form-control input-md"
							required="" type="text" path="moviesdescription" />
						<sf:errors path="moviesdescription"></sf:errors>

					</div>
				</div>
				<div class="form-group">
					<sf:label class="col-md-12 control-label" for="category" path="category">  MOVIES
						CATEGORY</sf:label>
					<div class="col-md-12">
						<sf:select path="id">
						<sf:option value="0" label="Select"/>
						<sf:options item="${categories }" itemLabel="name" itemValue="id"/>
						</sf:select>
                        
					</div>
				</div>

				<div class="form-group">
					<sf:label class="col-md-12 control-label" for="movies_price"
						path="moviesprice">MOVIES PRICE</sf:label>
					<div class="col-md-12" align="center">
						<sf:input id="movies_price" name="movies_price"
							placeholder="MOVIES price" class="form-control input-md"
							required="" type="text" path="moviesprice" />
						<sf:errors path="moviesprice"></sf:errors>

					</div>

					<!-- Button -->
					<div class="form-group" align="center">


						<button id="singlebutton" name="singlebutton"
							class="btn btn-primary">Add</button>


					</div>
			</fieldset>
		</sf:form>
	</security:authorize>
	<div class=container>
		<table class="table table-default table-responsive table-hover">
			<thead>
				<tr>
					<th>Id</th>
					<th>MoviesName</th>
					<th>MoviesDescription</th>
					<th>MoviesCategory</th>
					<th>MoviesPrice</th>
					<th>Image</th>
				</tr>
			</thead>
			<c:forEach items="${movies}" var="mov">

				<tbody>
					<tr>
						<td>${mov.id}</td>
						<td>${mov.moviesname}</td>
						<td>${mov.moviesdescription}</td>
						<td>${mov.moviescategory}</td>
						<td>${mov.moviesprice}</td>
						<td><img
							src="${context}/resources/images/${mov.moviesname}.jpg"
							width="150" align="middle" height="150"></td>
						<security:authorize access="hasRole('ROLE_ADMIN')">
							<td><a class="btn btn-info"
								href="${context}/editmov/${mov.id}">Edit</a></td>
							<td><a class="btn btn-danger"
								href="${context}/deletemov/${mov.id}">Delete</a></td>
						</security:authorize>
						<security:authorize access="hasRole('ROLE_USER')">
							<td><a class="btn btn-success"
								href="${pageContext.request.contextPath}/add/to/cart/${mov.id}">ADD
									TO CART</a></td>
							<td><a class="btn btn-info"
								href="${pageContext.request.contextPath}/Show/cart/${mov.id}">VIEW
								</a></td>		
						</security:authorize>
					</tr>
				</tbody>

			</c:forEach>

		</table>
	</div>
	<div></div>
</body>
</html>