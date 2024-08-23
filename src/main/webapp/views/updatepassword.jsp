<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registeration</title>
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

.hidd {
	visibility: hidden;
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

.success {
    background-image:url("/resources/image/booking-bg.jpg");
    background-size:cover;
    background-repeat:no-repeat;
	height: 85vh;
}

.success .container {
	cursor: pointer;
	height: 85vh;
	display: flex;
	gap: 20px;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	background-color: #fff;
	width: 90%;
	margin: auto;
}

.success .container i {
	font-size: 100px;
	background-color: var(--dark-green-color);
	border-radius: 3rem;
}

.success .container h3 {
	color: var(--black-color);
	font-size: 20px;
}

.success .container a {
	text-decoration: none;
	text-transform: uppercase;
	background-color: #1ca3e3;
	color: var(--green-color);
	padding: 10px 25px;
	border-radius: 0.5rem;
}

.success .container a:hover {
	color: var(--white-color);
	background-color: var(--black-color);
	transition: background 1s ease;
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
	<section class="success">
		<div class="container">
			<i class="fa-solid fa-circle-check"></i>
			<h3>Your password has been updated !</h3>
			<a href="home">Back Home</a>
		</div>
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
</body>

</html>
