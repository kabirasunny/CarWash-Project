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
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
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
	/* background-color: red; */
	height: 90vh;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
}

.sectionForm h3 {
	font-size: 30px;
}

.sectionForm form {
	width: 40%;
	padding: 50px;
	display: flex;
	flex-direction: column;
	gap: 20px;
	background-color: var(--greysshade-color);
	margin: 20px 0;
}

.sectionForm form input {
	font-size: 18px;
	padding: 10px;
	border-radius: 0.5rem;
}

.error {
	color: red;
}

.sectionForm form .btn {
	cursor: pointer;
	text-transform: uppercase;
	width: 50%;
	margin: auto;
	padding: 10px;
	border-radius: 0.3rem;
	color: var(--green-color);
	background-color: var(--dark-green-color);
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

.sectionForm form msg {
	color: red;
}

.sectionForm form .btn:hover {
	color: var(--white-color);
	background-color: var(--black-color);
	transition: background 1s ease;
}

.sectionForm form .num {
	display: none;
}

.sectionForm form .psw {
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
		<form action="reset" method="post" onsubmit="return validation()">
			<input type="tel" id="num" name="phoneNumber"
				placeholder="Enter Your Number" value="">
			<p class="error" id="numText"></p>
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
        let numText;
        let nm = document.getElementById("num").value;
        let num = parseInt(nm);
        if (num < 9999999999 && num > 1000000000) {
            numText = "";
        } else if (!num) {
            numText = "Phone Number can not be empty !!"
            document.getElementById("numText").innerHTML = numText;
            return returnval = false;
        }

        else {
            numText = "Phone Number must be 10 digit !!"
            document.getElementById("numText").innerHTML = numText;
            return returnval=false;
        }
        
    }
	</script>
</body>
</html>