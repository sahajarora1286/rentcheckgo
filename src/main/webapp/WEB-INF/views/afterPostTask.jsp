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
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Tasks<span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">Browse Tasks</a></li>
									<li><a href="/app/navPostTask">Post a Task</a></li>
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
		<div class="row">
			<h1>Your task has been posted!</h1>

			<form method="post" action="postTask" accept-charset="UTF-8"
				id="task-area">
				<div class="form-group">
					<button type="submit" class="btn btn-primary btn-block">Post
						Another Task</button>
				</div>
			</form>

			<form method="get" action="browseTasks" accept-charset="UTF-8"
				id="task-area">
				<div class="form-group">
					<button type="submit" class="btn btn-primary btn-block">Browse
						Tasks</button>
				</div>
			</form>
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
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
	<c:url value="resources/js/vendor/holder.min.js" var="holderMinJS" />
	<script src="${holderMinJS}"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<c:url value="resources/js/ie10-viewport-bug-workaround.js"
		var="ie10WorkAroundJS" />
	<script src="${ie10WorkAroundJS}"></script>

</body>
</html>