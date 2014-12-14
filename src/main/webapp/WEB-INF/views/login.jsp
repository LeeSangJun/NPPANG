<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Nppang</title>
	<link rel="stylesheet" type="text/css" href="resources/css/default.css" />
	<link rel="stylesheet" type="text/css" href="resources/css/loginform.css" />
	<link rel="stylesheet" type="text/css" href="resources/css/animate-custom.css" />
</head>
<body>
<header>
		<nav><a href="./login">Login</a></nav>
		<nav><a href="./login#toregister">Join</a></nav>
		<span>Nppang</span>
</header>
<section>
	<div class="l_container">
		<a class="hiddenanchor" id="toregister"></a>
		<a class="hiddenanchor" id="tologin"></a>
		<div id="wrapper">
			<div id="login" class="animate form">
				<form action = "login" method = "post">
					<h1>Login</h1>
					<p>
						<label class="uname">Your ID</label><input id="userid" name="userid" placeholder="User ID">
					</p>
					<p>
						<label class="pawssword">Your Password</label><input id="password" name="password" type="password"placeholder="User password">
					</p>
					<p class="login button">
                        <input type="submit" value="Login"/>
					</p>
					<p>
						<a href="#toregister" class="to_register" id="button">Join us</a>
					</p>
				</form>
			</div>
			<div id="register" class="animate form">
                <form action = "./Join" method = "post">
                	<!--
                		@RequestParam("name") String name,
						@RequestParam("email") String email,
						@RequestParam("pwd") String pwd,
						@RequestParam("description") String dec,
						@RequestParam("photo") String photo
					 -->
                    <h1> Sign up </h1>
                    <p>
                        <label for="usernamesignup" class="uname">Your username</label>
                        <input id="usernamesignup" name="name" type="text"/>
                    </p>
                    <p>
                        <label for="emailsignup" class="youmail" data-icon="e" > Your email</label>
                        <input id="emailsignup" name="email" required="required" type="email"/>
                    </p>
                    <p>
                        <label for="passwordsignup" class="youpasswd" data-icon="p">Your password </label>
                        <input id="passwordsignup" name="pwd" required="required" type="password"/>
                    </p>
                    <p>
                        <label for="descriptipon" class="description" data-icon="p">Please confirm your password </label>
                        <input id="description" name="description" required="required" type="text"/>
                    </p>
                    <p>
                        <label for="photo" class="photo" data-icon="p">Please confirm your password </label>
                        <input id="photo" name="photo" required="required" type="text"/>
                    </p>
                    <p class="signin button">
						<input type="submit" value="Sign up"/>
					</p>
                    <p>
						<a href="#tologin" class="to_register" id="button"> Go and log in </a>
					</p>
                </form>
			</div>
		</div>
	</div>
</section>

</body>
</html>