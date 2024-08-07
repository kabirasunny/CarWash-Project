<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Forget Password</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<style>

* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
	font-family: Arial, Helvetica, sans-serif;
}

:root {
	--greysshade-color: #ebebea;
	--black-color: #000000;
	--primary-color: #686de0;
	--white-color: #ffffff;
	--light-color: #f1f2f6;
	--grey-color: #b0b5bd;
	--dark-color: #353b48;
	--green-color: #c3fc68;
	--dark-green-color: #4ba013;
}

header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: var(--black-color);
	position: sticky;
	top: 0;
}

header nav ul {
	list-style: none;
}

header nav ul {
	display: flex;
	gap: 20px;
}

header nav ul li a {
	text-decoration: none;
	text-transform: uppercase;
	color: var(--white-color);
}

header nav {
	padding: 15px;
}

header .logo {
	font-size: 25px;
	font-weight: bold;
	padding: 0 15px;
	color: var(--dark-green-color);
}

.sectionForm {
	background-image:url("/resources/image/booking-bg.jpg");
    background-size:cover;
    background-repeat:no-repeat;
	height: 90vh;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
}

.sectionForm h3 {
	font-size: 30px;
	margin: 5px;
	color: #fff;
}

.sectionForm form {
	width: 40%;
	padding: 50px;
	display: flex;
	flex-direction: column;
	gap: 12px;
	background-color: var(--greysshade-color);
	margin: 20px 0;
}

.sectionForm form input {
	font-size: 18px;
	padding: 10px;
	border-radius: 0.5rem;
	border: 1px solid black;
}

.error {
	color: red;
	display: none;
	margin: 0;
}

.sectionForm form .btn {
	cursor: pointer;
	text-transform: uppercase;
	width: 50%;
	margin: auto;
	padding: 10px;
	border-radius: 0.3rem;
	color: #fff;
	background-color: #1ca3e3;
}

.sectionForm form div {
	display: flex;
	flex-direction: row;
	flex-wrap: wrap;
	gap: 20px;
	justify-content: center;
}

.sectionForm form div .loginSignup {
	text-decoration: none;
	color: var(--dark-color);
	cursor: pointer;
}

.sectionForm form .btn:hover {
	color: var(--white-color);
	background-color: var(--black-color);
	transition: background 1s ease;
}

.sectionForm form #num {
	display: none;
}

footer {
	background-color: var(--black-color);
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 15px;
}

footer .copyRight {
	color: var(--white-color);
	cursor: pointer;
}

footer .icons a {
	text-decoration: none;
	font-size: 20px;
	margin: 5px;
	color: var(--white-color);
}
</style>
</head>
<body>
	<header>
		<div class="logo">CW</div>
		<nav>
			<ul>
				<li><a href="home">Home</a></li>
				<li><a href="about">About</a></li>
				<li><a href="contact">Contact</a></li>
			</ul>
		</nav>
	</header>

	<section class="sectionForm">
		<h3>Forgot Password</h3>
		<form action="submitpassword" method="post"
			onsubmit="return validation()">
			<input required type="tel" id="num" name="phoneNumber"
				placeholder="Enter Your Number" value="${number }"> <input
				type="password" class="psw" id="ps1" name="password"
				placeholder="Set your password">
			<p class="error passText"></p>
			<input required type="password" class="psw" id="ps2" name="secondPassword"
				placeholder="Re-enter password">
			<p class="error passText"></p>
			<button type="submit" class="btn">reset</button>
			<hr>
			<div>
				<a href="login" class="loginSignup">Login</a> <a href="signup"
					class="loginSignup">Sign up</a>
			</div>
		</form>
	</section>

	<footer>
		<div class="copyRight">
			<h3>&copy; 2024.All Rights Reserved.www.carwash.com</h3>
		</div>
		<div class="icons">
			<a href=""><i class="fa-brands fa-instagram"></i></a><a href=""><i
				class="fa-brands fa-square-twitter"></i></a><a href=""><i
				class="fa-brands fa-square-facebook"></i></a>
		</div>
	</footer>
	<script>
		function validation() {
			let returnval = true;
			let passText;
			let pass = document.getElementsByClassName("passText")[0];
			let passSec = document.getElementsByClassName("passText")[1];
			let ps1 = document.getElementById("ps1").value;
			let psFirst = parseInt(ps1);
			let ps2 = document.getElementById("ps2").value;
			let psSecond = parseInt(ps2);
			if (!psFirst) {
				style.display="block";
				passText = "Password can not be empty !!";
				pass.style.display="block";
				pass.innerHTML = passText;
				return returnval = false;
			} else {
				if (psFirst > 100000 && psFirst < 999999999999) {
					passText = "";
					pass.style.display="none";
					pass.innerHTML = passText;
					if (psFirst === psSecond) {
						passText = ""
						pass.style.display="none";
						pass.innerHTML = passText;
						passSec.innerHTML = passText;
						return returnval = true;
					} else {
						document.getElementsByClassName("passText")[1].style.display="block";
						passText = "Your password does not match try again !!";
						passSec.style.display="block";
						passSec.innerHTML = passText;
						return returnval = false;
					}
				} else {
					passText = "Password must be between 6-12 digit only number!!";
					pass.style.display="block";
					pass.innerHTML = passText;
					return returnval = false;
				}
			}
		}
	</script>
</body>
</html>