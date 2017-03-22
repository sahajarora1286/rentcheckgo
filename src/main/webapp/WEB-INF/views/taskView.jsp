<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Post Task</title>

<!-- Bootstrap core CSS -->
<c:url value="/resources/css/bootstrap.min.css" var="bootstrapMin" />
<link href="${bootstrapMin}" rel="stylesheet">


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

			<h1>Task Details</h1>

		</div>

		<div class="row" style="margin-top: 20px; background: #eaf9e8; padding: 20px">

			<div class="col-lg-6" style="background: #eaf9e8">
				<div class="col-sm-6" style="text-align:center">
					<h3>Address to Check</h3>
					<b><p>${task.unit},${task.streetAddress}</p></b> <b><p>${task.city},${task.province}</p></b>
					<b><p>${task.postalCode}</p></b>
					
					<div class="note" >
					<h3>Note for Checker</h3>
					<textarea readonly name="note" class="form-control" rows="9" cols="400"
							style="resize: none; padding: 10px; background: white; border: 1px solid green" 
							placeholder="Note">${task.note}</textarea>
					</div>
				</div>

				<div class="col-sm-6" style="text-align:center">
					<h3>Preferred Time</h3> <b><p>${task.preferredTime}</p></b>
				</div>
			</div>

			<div class="col-lg-6" align="center" style="text-align:center; background:white; border: 1px solid green">
				<h3>Budget</h3>
				<b><p style="background:white; color:#3bb300; font-size:25px">$${task.minBudget} - $${task.maxBudget}</p></b>
				
				<input type="button" style="background: #3366ff;color:white; font-size: 16px; margin-top: 60px; padding: 20px 10px;radius:4px; margin-bottom: 10px" value="Bid on this Task">
				
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>window.jQuery || document.write('<c:url value="resources/js/vendor/jquery.min.js" var="jqueryMinJS"/>" <script src="${jqueryMinJS}"><\/script>')</script>

	<c:url value="resources/js/bootstrap.min.js" var="bootstrapMinJSS" />
	<script src="${bootstrapMinJSS}"></script>
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
	<c:url value="resources/js/vendor/holder.min.js" var="holderMinJS" />
	<script src="${holderMinJS}"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<c:url value="resources/js/ie10-viewport-bug-workaround.js"
		var="ie10WorkAroundJS" />
	<script src="${ie10WorkAroundJS}"></script>

</body>
</html>