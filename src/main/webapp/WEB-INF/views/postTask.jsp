<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Post Task</title>

<!-- Bootstrap core CSS -->

<c:url value="/resources/css/bootstrap.min.css" var="bootstrapMin" />
<link href="${bootstrapMin}" rel="stylesheet">

<style>
	input[type=range]{
    -webkit-appearance: none;
}

input[type=range]::-webkit-slider-runnable-track {
    width: 300px;
    height: 8.4px;
    background: #4dce23;
    box-shadow: 1px 1px 1px #000000, 0px 0px 1px #0d0d0d;
    border: none;
    border-radius: 3px;
}

input[type=range]::-webkit-slider-thumb {
    -webkit-appearance: none;
    border: 1px  green;
    height: 36px;
    width: 16px;
    border-radius: 3px;
    background: #ffffff;
    margin-top: -14px;
    box-shadow: 1px 1px 1px #000000, 0px 0px 1px #0d0d0d;
    cursor:pointer;
}

input[type=range]::-moz-range-thumb {
    -webkit-appearance: none;
    border: none;
    height: 16px;
    width: 16px;
    border-radius: 50%;
    background: goldenrod;
    margin-top: -4px;
    box-shadow: 1px 1px 1px #000000, 0px 0px 1px #0d0d0d;
    cursor: pointer;
}

input[type=range]:focus {
    outline: none;
}

input[type=range]:focus::-webkit-slider-runnable-track {
  
}
</style>

</head>
<body>

	<!-- NavBar -->

	<div class="navbar-wrapper" style="margin-bottom: 0">
		<div class="container">

			<nav class="navbar navbar-default navbar-inverse" role="navigation">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">Rent Check Go</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li><a href="/app/dashboard">Dashboard</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">My Bids<span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">Active Bids</a></li>
								</ul></li>
							<li class="dropdown active"><a href="#"
								class="dropdown-toggle" data-toggle="dropdown">Tasks<span
									class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="/app/browseTasks">Browse Tasks</a></li>
									<li class="active"><a href="/app/navPostTask">Post a
											Task</a></li>
									<li class="divider"></li>
									<li><b><p
												style="text-align: left; padding-left: 20px; font-size: 12px">MY
												TASKS</p></b></li>
									<li><a href="#">Active Tasks</a></li>
									<li><a href="#">Completed Tasks</a></li>
								</ul></li>


						</ul>

						<ul class="nav navbar-nav navbar-right">
							<li><a href="#">Account Balance: $0.00</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">My Account<span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">My Profile</a></li>
									<li class="divider"></li>
									<li><a href="#">Billing Info</a></li>
									<li><a href="#">Transaction History</a></li>
									<li class="divider"></li>
									<li><a href="#">Account Settings</a></li>
									<li class="divider"></li>
									<li
										style="padding-left: 13px; padding-right: 13px; padding-top: 16px; padding-bottom: 16px"><form
											method="get" action="logout" accept-charset="UTF-8">
											<button type="submit" class="btn btn-primary btn-block"
												value="logout">Sign Out</button>
										</form></li>
								</ul></li>

						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>

		</div>
	</div>
	<!-- End of Navbar -->

	<div class="container">
		<div class="row"></div>

		<div class="row">
			<div class="col-sm-6">

				<form method="post" action="postTask" accept-charset="UTF-8"
					id="task-area">

					<h1 style="text-align: center">Post a Task</h1>
					<h3>Unit/Apt/Suite</h3>
					<input name="unit" type="text" class="form-control" id="unit"
						placeholder="Unit#/Apt#/Suite#">

					<h3>Street Address</h3>
					<input name="streetAddress" type="text" class="form-control"
						id="streetAddress" placeholder="Street Number and Name" required>

					<div class="col-sm-4">
						<h3>City</h3>
						<input name="city" type="text" class="form-control" id="city"
							placeholder="City" required>
					</div>

					<div class="col-sm-4">
						<h3>Province</h3>
						<input name="province" type="text" class="form-control"
							id="province" placeholder="Province" required>
					</div>

					<div class="col-sm-4">
						<h3>Postal Code</h3>
						<input name="postalCode" type="text" class="form-control"
							id="postalCode" placeholder="Postal Code" required>
					</div>

					<div class="mini-container" style="margin-top: 120px">
						<h3>Preferred Time</h3>
						<input name="preferredTime" type="text" class="form-control"
							id="preferredTime"
							placeholder="Preferred time for viewing the place. Eg: Monday 5 pm.">

						<h3>Note for the Checker</h3>
						<textarea name="note" class="form-control" rows="4" cols="80"
							style="resize: none"
							placeholder="Note for the checker. Mention things that you want the checker to be specific about when checking."></textarea>
						
						
						<div class="budget" align="center" style=" margin-top: 20px">
						<h3 >Choose Your Budget</h3>

						<div class="col-sm-6" style="padding: 10px;margin-top:20px ">
						
							<input  name="minBudget" type="range" min="15" max="150" step="5"  value="20"
								id="myRange" >
							<b><p style="margin-top:25px; font-size:20px" ><span id="currentValue"></span></p></b>
							
						</div>

						<div class="col-sm-6" style="padding: 10px; margin-top:20px">
							<input name="maxBudget" type="range" onclick="myFunction2()" step ="5" min="20" max="150"
								id="myRange2" value="50">
							<b><p style="margin-top:25px; font-size:20px" ><span id="currentValue2"></span></p></b>
						</div>
						
						</div>


						<button style="margin-top: 60px; margin-bottom: 90px" name="postButton" type="submit"
							class="btn btn-primary btn-block">Post Task</button>
					</div>
				</form>
			</div>

			<div class="col-sm-6">
				<c:url value="/resources/img/home-safety.jpg" var="homeSafetyJpg" />

				<img style="width: 100%" src="${homeSafetyJpg}"
					alt="Generic placeholder image" height="350">
				<h3>Be sure of the place you move in to. Get it checked. Post a
					task now.</h3>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<c:url value="resources/js/vendor/jquery.min.js" var="jqueryMinJS"/>" <script src="${jqueryMinJS}"><\/script>')
	</script>

	<c:url value="resources/js/bootstrap.min.js" var="bootstrapMinJSS" />
	<script src="${bootstrapMinJSS}"></script>

<script>
$(function(){

	var currentValue = $('#currentValue');

	$('#myRange').change(function(){
	    currentValue.html("$" + this.value);
	});

	// Trigger the event on load, so
	// the value field is populated:

	$('#myRange').change();

});
</script>

<script>
$(function(){

	var currentValue = $('#currentValue2');

	$('#myRange2').change(function(){
	    currentValue.html("$" + this.value);
	});

	// Trigger the event on load, so
	// the value field is populated:

	$('#myRange2').change();

});
</script>

	<script>
		function myFunction() {
			var x = document.getElementById("myRange").value;
			document.getElementById("demo").innerHTML = "$"+x;
		}
	</script>

	<script>
		function myFunction2() {
			var x = document.getElementById("myRange2").value;
			document.getElementById("demo2").innerHTML = "$"+x;
		}
	</script>

	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
	<c:url value="resources/js/vendor/holder.min.js" var="holderMinJS" />
	<script src="${holderMinJS}"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<c:url value="resources/js/ie10-viewport-bug-workaround.js"
		var="ie10WorkAroundJS" />
	<script src="${ie10WorkAroundJS}"></script>



</body>
</html>