
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Rent Check Go</title>

    <!-- Bootstrap core CSS -->
    <c:url value="/resources/css/bootstrap.min.css" var="bootstrapMin" />
    <link href="${bootstrapMin}" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <c:url value="/resources/css/ie10-viewport-bug-workaround.css" var="ie10WorkAroundCSS"/>
    <link href="${ie10WorkAroundCSS}" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <c:url value="resources/js/ie-emulation-modes-warning.js" var="ieEmulationWarningJS"/>
    <script src="${ieEmulationWarningJS}"></script>
	


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Custom styles for this template -->
   
	<c:url value="/resources/css/loginRegister.css" var="loginRegisterCSS"/>
	<link href="${loginRegisterCSS}" rel="stylesheet">
    
    <c:url value="/resources/css/carousel.css" var="carouselCSS" />
    <link href="${carouselCSS}" rel="stylesheet">  
    
    <c:url value="/resources/css/img-rotate.css" var="imgRotateCSS" />
    <link href="${imgRotateCSS}" rel="stylesheet">
      
  </head>
<!-- NAVBAR
================================================== -->
  <body>
    <div class="navbar-wrapper">
      <div class="container">

        <nav class="navbar navbar-default navbar-inverse" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Rent Check Go</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" style="margin-left: 0px" data-toggle="dropdown">Rent a Place<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="/app/navPostTask">Post a Task</a></li>
            <li><a href="/app/browseTasks">View Tasks</a></li>
            <li class="divider"></li>
            <li><a href="#">Learn More</a></li>

          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" style="margin-left: 0px" data-toggle="dropdown">Work<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Bid on a Task</a></li>
            <li class="divider"></li>
            <li><a href="#">Learn More</a></li>
  
          </ul>
        </li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        
        <!-- Login Nav -->
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Login</b> <span class="caret"></span></a>
			<ul id="login-dp" class="dropdown-menu" style="width: 250px; padding-left: 15px; padding-right:15px">
				<li>
					 <div class="row">
							<div class="col-md-12">
								<div class = "login-area" style="text-align:center; margin-top: 20px">
								<b>Login using</b>
								<div class="social-buttons">
									<a href="#" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
									<a href="#" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
								</div>
                                    <p style="text-align:center"> OR </p>
								 <form:form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
										<div class="form-group">
											 <label class="sr-only" for="loginEmail">Email address</label>
											 <input name="loginEmail" type="email" class="form-control" id="loginEmail" placeholder="Email address" required>
										</div>
										<div class="form-group">
											 <label class="sr-only" for="loginPassword">Password</label>
											 <input name="loginPassword" type="password" class="form-control" id="loginPassword" placeholder="Password" required>
                                             <div class="help-block text-right" style="text-align: center" ><a href="">Forgot password ?</a></div>
										</div>
										<div class="form-group">
											 <button type="submit" class="btn btn-primary btn-block">Sign in</button>
										</div>
										<div class="checkbox">
											 <label>
											 <input type="checkbox"> Keep me logged-in
											 </label>
										</div>
								 </form:form>
							</div>
							
							
							</div>
					 </div>
				</li>
			</ul>
        </li>
          
          <!--Sign Up Nav Item-->
          <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Sign Up</b> <span class="caret"></span></a>
			<ul id="register-dp" class="dropdown-menu" style="width: 250px; padding-left: 15px; padding-right:15px">
				<li>
					 <div class="row">
							<div class="col-md-12">
								<div class = "register-area"  style="margin-top: 20px;">
                                    <b><p style="color: #008ae6">Your new home is a just click away. Get started instantly.</p></b>
								 <form method="post" action="save" accept-charset="UTF-8" id="register-nav">
								 	
								 	
								 	
								 	<div class="form-group">
											 <label class="sr-only" for="firstName">First name</label>
											 <input name="firstName" type="text" class="form-control" id="firstName" placeholder="First name" required>
										</div>
								 	
								 	
								 	<div class="form-group">
											 <label class="sr-only" for="lastName">First name</label>
											 <input name="lastName" type="text" class="form-control" id="lastName" placeholder="Last name" required>
										</div>
								 
								 	
										<div class="form-group">
											 <label class="sr-only" for="registerEmail">Email address</label>
											 <input name="registerEmail" type="email" class="form-control" id="registerEmail" placeholder="Email address" required>
										</div>
										<div class="form-group">
											 <label class="sr-only" for="registerPassword">Password</label>
											 <input name="registerPassword" type="password" class="form-control" id="registerPassword" placeholder="Password" required>
                                            
										</div>
                                     
                                        <div class="form-group">
											 <label class="sr-only" for="confirmRegisterPassword">Confirm Password</label>
                                            <input name="confirmRegisterPassword" type="password" class="form-control" id="confirmRegisterPassword" placeholder="Confirm Password" required>
										</div>
										<div class="form-group">
											 <button type="submit" class="btn btn-primary btn-block" value="save">Sign Up</button>
										</div>
										
								 </form>
							</div>
							
							
							</div>
					 </div>
				</li>
			</ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

      </div>
    </div>


    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
         <c:url value="resources/img/carousel-home.jpg" var="carouselHomeJPG"/>
          <img class="first-slide" src="${carouselHomeJPG}" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
			  
              <h1 style="margin-top: 10px">Rent Check Go</h1>
              <p>Help us help you find your new home.</p>	
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
            </div>
          </div>
        </div>
        <div class="item">
             <c:url value="resources/img/carousel-home.jpg" var="carouselHomeJPG"/>
          <img class="second-slide" src="${carouselHomeJPG}" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Another example headline.</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
            </div>
          </div>
        </div>
        <div class="item">
            <c:url value="resources/img/carousel-home.jpg" var="carouselHomeJPG"/>
          <img class="third-slide" src="${carouselHomeJPG}" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>One more for good measure.</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->


    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">
    
    
		<div class = "row">
			<b><p style="text-align:center; color: red;">${errorMessage}</p></b>
			
		</div>
      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="col-lg-4">
        <c:url value="/resources/img/devices.png" var="devicesImg" />
    
          <img class="img-circle" src="${devicesImg}" alt="Generic placeholder image" width="140" height="140">
          <h2>Heading</h2>
          <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="${devicesImg}" alt="Generic placeholder image" width="140" height="140">
          <h2>Heading</h2>
          <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="${devicesImg}" alt="Generic placeholder image" width="140" height="140">
          <h2>Heading</h2>
          <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->


      <!-- START THE FEATURETTES -->

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">First featurette heading. <span class="text-muted">It'll blow your mind.</span></h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7 col-md-push-5">
          <h2 class="featurette-heading">Oh yeah, it's that good. <span class="text-muted">See for yourself.</span></h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
        <div class="col-md-5 col-md-pull-7">
          <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">And lastly, this one. <span class="text-muted">Checkmate.</span></h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">

      <!-- /END THE FEATURETTES -->


      <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2016 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>
        
    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<c:url value="resources/js/vendor/jquery.min.js" var="jqueryMinJS"/>" <script src="${jqueryMinJS}"><\/script>')</script>
   
   <c:url value="resources/js/bootstrap.min.js" var="bootstrapMinJSS" />
    <script src="${bootstrapMinJSS}"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <c:url value="resources/js/vendor/holder.min.js" var="holderMinJS" />
    <script src="${holderMinJS}"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <c:url value="resources/js/ie10-viewport-bug-workaround.js" var="ie10WorkAroundJS"/>
    <script src="${ie10WorkAroundJS}"></script>
  </body>
</html>
