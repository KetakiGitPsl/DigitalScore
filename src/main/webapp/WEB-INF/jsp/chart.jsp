<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ELTP : Technothon Projects</title>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="http://code.highcharts.com/highcharts.js"></script>
	<script src="http://code.highcharts.com/modules/exporting.js"></script>
	<script src="<c:url value="/resources/js/newbarchart.js" />"></script>
	<script>
	$(document).ready(function(){
		//setInterval(latestFeed, 2000);
		latestFeed();
	});
	function latestFeed(){
		var feedback_url = "http://localhost:8080/DigitalScore/score";
         $.ajax({
             type:"get",
             url: feedback_url,
             dataType:"json",
             success:function(data){
            	 //TBD: To prepend new message everytime
            	 console.log(data);
                 //paraText = data.Items[0].message.S;
                // $( "<p>"+paraText+"</p>" ).prependTo("#projectFeeds");
             }             
         });
	}
	// function setCounter()
	// {
    //         if (!localStorage.getItem("noOfVisitors")) {
    //             localStorage.setItem("noOfVisitors", 0);
    //         }
	// 		localStorage.setItem("noOfVisitors",
    //             parseInt(localStorage.getItem("noOfVisitors")) + 1);
    //         document.getElementById("counter").innerHTML =
    //             localStorage.getItem("noOfVisitors");
	// }
	// window.addEventListener("load", setCounter, false);
</script>
	<style>
		body {
			font-family: Verdana, sans-serif;
		}
		
		.demo-content {
			padding: 15px;
			font-size: 18px;
			min-width: 350px;
			min-height: 350px;
			border: solid 2px teal;
			margin-bottom: 10px;
			border-radius: 6px;
		}
		
		.demo-content.bg-alt {
			border: solid 2px teal;
		}
		
		.jumbotron {
			background-color: teal;
			color: white;
			margin: 0 5% auto;
		}
		
		.jumbotron span {
			padding-right: 10px;
			margin: 5px;
		}
		
		#projectFeeds p {
			margin: 10px;
			padding: 4px;
			font-family: Verdana, sans-serif;
			font-size: 13px;
			font-weight: bolder;
			border-radius: 6px;
		}
		
		#projectFeeds p:nth-child(odd) {
			color: white;
			background: teal;
		}
		
		#projectFeeds p:nth-child(even) {
			background: lightyellow;
		}
		
		#siteHits {
			width: 100px;
			height: 30px;
			font-size: 26px;
		}
		
		#container {
			/*width: 500px;
			height: 500px;*/
			margin: 50 auto;
		}
		
		.wrapper {
			text-align: center;
			padding: 30px;
		}
	</style>
</head>

<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Technothon Projects</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#"><span
							class="glyphicon glyphicon-home"></span>Home</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-user"></span>About</a>
					</li>
					<li><a href="#"><span
							class="glyphicon glyphicon-envelope"></span>Contact</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="jumbotron">
		<span class="h2">Technothon Projects</span>
		<span class="h2 pull-right">
			Site visitors 
		<span class="pull-right badge" id="counter"></span>
		</span>
	</div>
	<br />
	<div class="container-fluid text-center myDiv">
		<div class="row">
			<div class="col-sm-7 demo-content">
				<div>
					<h3><strong>Project's Ratings</strong></h3>
				</div>
				<div id="container">
				</div>
			</div>
			<div class="col-sm-5">
				<div>
					<h3><strong>Project's Feedback</strong></h3>
				</div>
				<div id="projectFeeds" class="demo-content bg-alt pre-scrollable">
					<p>All Projects are innovative. Keep it up good work and usage of latest Technologies.</p>
					<p>Good Work.</p>
					<p>Nice Projects :)</p>
					<p>Well Done !!</p>
				</div>
			</div>
		</div>
	</div>
	<br>
</body>
</html>