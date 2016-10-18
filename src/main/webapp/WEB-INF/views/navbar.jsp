<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
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
        <li><a href="#">About</a></li>
		<li><a href="#">Contact</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Services <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        
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
								 <form:form class="form" role="form" method="get" action="login" accept-charset="UTF-8" id="login-nav">
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

</body>
</html>