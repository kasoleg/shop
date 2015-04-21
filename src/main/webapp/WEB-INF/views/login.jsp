<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login/Register</title>
</head>
<body>
	<div id="loginPage">
		<div class="container">
			
				<div id="login">
					<div class="main-container">
						
							<form name="loginForm" id="loginForm" class="navbar-form" action="j_spring_security_check" method="post">
								<div class="row">
									<div class="column">
										<h2>Login</h2>
									</div>
								</div>
								<div class="row">
									<div class="column loginText">
										Existing Customers: Sign In Below
									</div>
								</div>
								<div class="row control">
									<div class="column">
										<input type="text" name="j_username" placeholder="Email" class="form-control"/>
									</div>
								</div>
								<div class="row control">
									<div class="column">
										<input type="password" name="j_password" placeholder="Password" class="form-control"/>
									</div>
								</div>
								<div class="row" id="forgot-password-link">
									<div class="column">
										<a href="#" class="navbar-link">Forgot your password?</a>
									</div>
								</div>
								<div class="row control">
									<div class="column">
										<input class="btn btn-login" type="submit" name="Login" value="LOGIN">
									</div>
								</div>
							</form>
						
					</div>
					<div class="column">
						<div id="socialLogin" class="navbar-form">
							<div class="row">
								<div class="column socialText">
									Or Login with:
								</div>
								<div class="column" id="btn-social-login">
									<ul class="list-inline btn-social-login">
										<li class="btn-social">
											<a href="#" id="facebook">
												<img class="img-responsive fb" src="<%=request.getContextPath()%>/resources/img/login/fb.png" >
											</a>
										</li>
										<li class="btn-social">
											<a href="#" id="google">
												<img class="img-responsive google" src="<%=request.getContextPath()%>/resources/img/login/gplus.png">
											</a>
										</li>
										<li class="btn-social">
											<a href="#" id="yahoo">
												<img class="img-responsive yahoo" src="<%=request.getContextPath()%>/resources/img/login/yahoo.png">
											</a>
										</li>
										<li class="btn-social">
											<a href="#" id="twitter">
												<img class="img-responsive twitter" src="<%=request.getContextPath()%>/resources/img/login/twitter.png">
											</a>
										</li>
									</ul>
								</div>
							</div>
							<div class="row">
								<div class="column">
									<p class="note">
										Note: We will never post anything without permission
									</p>
								</div>
							</div>
							<div class="row">
								<div class="column" style="width:100%">
									<p class="note">
										When you log out, please also log out from the corresponding account separately.
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="registration">
					<div class="row main-container" id="registration-box">
						<div>
							<div class="navbar-form">
								<div class="row">
									<div class="column" id="header-registration">
										<h2>
											"New to "
											<span>Shop.com</span>
										</h2>
										<div class="registrationText">New Customers: Sign Up Below</div>
										<div>
											<img class="img-responsive arrow-curved" src="<%=request.getContextPath()%>/resources/img/login/arrow_curved.png">
										</div>
									</div>
									
									
									
								</div>
								<div class="row">
									<div class="column" id="register-button-link">
										<button class="btn btn-register" id="new-account-btn" type="button">CREATE NEW ACCOUNT</button>
									</div>
								</div>
								<form name="registration-form" id="registration-form" method="post" action="#" class="bv-form">
									<div class="row control">
										<div class="column form-group">
											<input type="text" class="form-control" name="userName" placeholder="Name" />
										</div>
									</div>
									<div class="row control">
										<div class="column form-group">
											<input type="text" class="form-control" name="userName" placeholder="Email" />
										</div>
									</div>
									<div class="row control">
										<div class="column form-group">
											<input type="text" class="form-control" name="userName" placeholder="Password" />
										</div>
									</div>
									<div class="row">
										<div class="column">
											<p class="note">
												
												By signing in, you agree to our 
											<a href="#">Terms &amp; Conditions</a>
											<br>
											and that you have read our 
											<a href="#">Privacy Policy</a>
											</p>
										</div>
									</div>
									<div class="row">
										<div class="column" id="register-button-link">
											<button class="btn btn-register" type="submit">CREATE NEW ACCOUNT</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			
		</div>
	</div>

	<!--form action="j_spring_security_check" method="post">
		<table>
			<tr>
				<td>Login</td>
				<td><input type="text" name="j_username"/></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="j_password"/></td>
			</tr>
			<tr>
				<td><input type="submit" name="Login"/></td>
			</tr>
		</table>
	</form -->
</body>
</html>