<!DOCTYPE html>
<html lang="en">
<head>
<style>
h3 {
	background-color: black;
}
</style>

<title>Prime video</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
​</head>
<body style="background-color:black;">
  <%@ include file="header.jsp"%>                
	
	<div class="container-fluid">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="4"></li>
				<li data-target="#myCarousel" data-slide-to="5"></li>
				<li data-target="#myCarousel" data-slide-to="6"></li>
			</ol>

			<div class="carousel-inner">
				<div class="item active">
					<img src="resources/images/carousel/junglebunch.jpg" alt="junglebunch"
						style="width: 300; height: 1500;">
				</div>

				<div class="item">
					<img src="resources/images/carousel/powerofgirls.jpg" alt="powerofgirls"
						style="width: 300; height: 1500;">
				</div>

				<div class="item">
					<img src="resources/images/carousel/supernatural.jpg" alt="supernatural"
						style="width: 300; height: 1500;">
				</div>
				<div class="item">
					<img src="resources/images/carousel/ghazi_attack.jpg" alt="ghazi_attack"
						style="width: 300; height: 1500;">
				</div>
				<div class="item">
					<img src="resources/images/carousel/seinfeld.jpg" alt="seinfeld"
						style="width: 300; height: 1500;">
				</div>
				<div class="item">
					<img src="resources/images/carousel/brokev2.jpg" alt="brokev"
						style="width: 300; height: 1500;">
				</div>
				<div class="item">
					<img src="resources/images/carousel/hindi.jpg" alt="hindi"
						style="width: 300; height: 1500;">
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<h3 style="color: white;">Latest Movies</h3>
	<div id="carousel-example" class="carousel  hidden-xs"
		data-ride="carousel">
		<div class="carousel-inner">
			<div class="item active">
				<div class="row">
					<div class="col-xs-2 ">
						<div class="col-item">
							<img class="img-thumbnail" src="resources/images/LM/ooo.jpg"
								alt="ooo">
						</div>
					</div>
					<div class="col-sm-2">
						<div class="col-item">
							<img class="img-thumbnail" src="resources/images/LM/simran.jpg"
								alt="simran">
						</div>
					</div>
					<div class="col-sm-2">
						<div class="col-item">
							<img class="img-thumbnail" src="resources/images/LM/sam.jpg"
								alt="sam">
						</div>
					</div>
					<div class="col-sm-2">
						<div class="col-item">
							<img class="img-thumbnail" src="resources/images/LM/cog.jpg"
								alt="cog">
						</div>
					</div>
					<div class="col-sm-2">
						<div class="col-item">
							<img class="img-thumbnail" src="resources/images/LM/boom.jpg"
								alt="boom">
						</div>
					</div>
					<div class="col-sm-2">
						<div class="col-item">
							<img class="img-thumbnail" src="resources/images/LM/sat.jpg"
								alt="sat">
						</div>
					</div>

				</div>
			</div>

			<div class="item">
				<div class="row">
					<div class="col-sm-2">
						<div class="col-item">
							<img class="img-thumbnail" src="resources/images/LM/tet.jpg"
								alt="tet">
						</div>
					</div>
					<div class="col-sm-2">
						<div class="col-item">
							<img class="img-thumbnail" src="resources/images/LM/arjun reddy.jpg"
								alt="arjun reddy">
						</div>
					</div>
                     <div class="col-sm-2">
						<div class="col-item">
							<img class="img-thumbnail" src="resources/images/LM/lipstick.jpg"
								alt="lipstick">
						</div>
					</div>
					<div class="col-sm-2">
						<div class="col-item">
							<img class="img-thumbnail" src="resources/images/LM/tom.jpg"
								alt="tom">
						</div>
					</div>
                  <div class="col-sm-2">
						<div class="col-item">
							<img class="img-thumbnail" src="resources/images/LM/vip2.jpg"
								alt="vip2">
						</div>
					</div>
					<div class="col-sm-2">
						<div class="col-item">
							<img class="img-thumbnail" src="resources/images/LM/tubelight.jpg"
								alt="tubelight">
						</div>
					</div>
				</div>
			</div>
			<a class="left carousel-control" href="#carousel-example"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>

	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.carousel').each(function() {
				$(this).carousel({
					pause : true,
					interval :900000
				});
			});
		});
	</script>
	<h3 style="color: white;">Top Movies</h3>
	<div id="carousel-example1" class="carousel  hidden-xs"
		data-ride="carousel">
		<div class="carousel-inner">
			<div class="item active">
				<div class="row">
					<div class="col-sm-2 ">
						<div class="col-item">
							<img class="img-thumbnail" src="resources/images/TM/rana.jpg"
								alt="rana">
						</div>
					</div>
					<div class="col-sm-2">
						<div class="col-item">
							<img class="img-thumbnail" src="resources/images/TM/bindu.jpg"
								alt="bindu">
						</div>
					</div>
					<div class="col-sm-2">
						<div class="col-item">
							<img class="img-thumbnail" src="resources/images/TM/vip2.jpg"
								alt="vip2">
						</div>
					</div>
					<div class="col-sm-2">
						<div class="col-item">
							<img class="img-thumbnail" src="resources/images/TM/medium.jpg"
								alt="medium">
						</div>
					</div>
					<div class="col-sm-2">
						<div class="col-item">
							<img class="img-thumbnail" src="resources/images/TM/lipstick.jpg"
								alt="lipstick">
						</div>
					</div>
					<div class="col-sm-2">
						<div class="col-item">
							<img class="img-thumbnail" src="resources/images/TM/arjun reddy.jpg"
								alt="arjun reddy">
						</div>
					</div>

				</div>
			</div>

			<div class="item">
				<div class="row">
					<div class="col-sm-2">
						<div class="col-item">
							<img class="img-thumbnail" src="resources/images/LM/tet.jpg"
								alt="tet">
						</div>
					</div>
					<div class="col-sm-2">
						<div class="col-item">
							<img class="img-thumbnail" src="resources/images/LM/tubelight.jpg"
								alt="tubelight">
						</div>
					</div>
                     <div class="col-sm-2">
						<div class="col-item">
							<img class="img-thumbnail" src="resources/images/LM/tom.jpg"
								alt="tom">
						</div>
					</div>
					<div class="col-sm-2">
						<div class="col-item">
							<img class="img-thumbnail" src="resources/images/LM/simran.jpg"
								alt="simran">
						</div>
					</div>
                  <div class="col-sm-2">
						<div class="col-item">
							<img class="img-thumbnail" src="resources/images/LM/ooo.jpg"
								alt="ooo">
						</div>
					</div>
					<div class="col-sm-2">
						<div class="col-item">
							<img class="img-thumbnail" src="resources/images/TM/hos.jpg"
								alt="hos">
						</div>
					</div>
				</div>
			</div>
			<a class="left carousel-control" href="#carousel-example1"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example1"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>

	</div>
	
</body>
  <%@ include file="footer.jsp"%>                
</html>

