<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ELTP : Technothon Projects</title>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
	<link href="<c:url value="/resources/css/newStyle.css" />" rel="stylesheet" />
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="http://code.highcharts.com/highcharts.js"></script>
	<script src="http://code.highcharts.com/modules/exporting.js"></script>
	<script src="<c:url value="/resources/js/newbarchart.js" />"></script>
	<script>
	</script>
	<style>
		body {
			font-family: Verdana, sans-serif;
		}

		.demo-content {
			padding: 10px;
			font-size: 18px;
			min-width: 350px;
			min-height: 350px;
			/* border: solid 2px teal; */
			margin-bottom: 20px;
			/* border-radius: 6px; */
		}

		.demo-content.bg-alt {
			border: solid 2px teal;
		}

		.jumbotron {
			/* background-color: teal; */
			color: white;
			/* margin: 0 5% auto; */
		}

		.jumbotron span {
			padding-right: 10px;
			margin: 5px;
		}

		#container {
			margin: 30 auto;
		}

		.wrapper {
			text-align: center;
			padding: 20px;
		}

		footer {
			float: right;			
			font-family: Verdana, Geneva, sans-serif;
			font-size: 0.9em;
			font-weight: bold;
			color: #FFF;
			background-color: #666;
			padding: 10px;			
			height: auto;			
		}
	</style>
</head>

<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand mybrand" href="#">Technothon Projects</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active">
						<a href="#">
							<span class="glyphicon glyphicon-home"></span>Home</a>
					</li>
					<li>
						<a href="#">
							<span class="glyphicon glyphicon-user"></span>About</a>
					</li>
					<li>
						<a href="#">
							<span class="glyphicon glyphicon-envelope"></span>Contact</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container-fluid text-center">
		<div class="row wrap">
			<div class="col-sm-7 demo-content">
				<div>
					<h3>
						<strong>Project's Ratings</strong>
					</h3>
				</div>
				<div id="container">
				</div>
			</div>
		</div>
	</div>
	<div class="container">
	<div class="row">
	<div class="col-sm-12 myfooter">	
				Copyright &copy; 2018 Persistent Systems Ltd		
			</div>
		</div>
	</div>
	<br>
</body>

</html>