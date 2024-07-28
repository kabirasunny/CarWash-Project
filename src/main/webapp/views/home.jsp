<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
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

header nav ul li {
	text-weight: 900;
	text-transform: uppercase;
	color: var(--white-color);
	text-transform: uppercase;
}

header nav ul li a {
	text-decoration: none;
	text-transform: uppercase;
	color: var(--white-color);
}

header nav ul #navName {
	color: #CCFF90;
}

header nav ul #logout a {
	color: red;
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

.sectionHome {
	/* background-color: green; */
	margin: 20px 0;
}

.sectionHome .loginSignup {
	background-image: url("resources/image/carhome.jpg");
	background-size: cover;
	background-position: 30%;
	background-repeat: no-repeat;
	width: 90%;
	height: 70vh;
	margin: auto;
	display: flex;
	justify-content: center;
	align-items: center;
}

.sectionHome .loginSignup a {
	color: var(--black-color);
	text-decoration: none;
	text-transform: uppercase;
	background-color: var(--white-color);
	padding: 15px 30px;
	margin: 10px;
	font-size: 18px;
	border-radius: 0.5rem;
}

.sectionHome .loginSignup a:hover {
	color: var(--white-color);
	background-color: var(--black-color);
	transition: background 1s ease;
}

.sectionHome .loginSignup .ls {
	visibility: hidden;
}

.cards {
	background-color: var(--greysshade-color);
	/* height: 80vh; */
}

.cards .divCards {
	padding: 15px 0;
	display: flex;
	flex-direction: row;
	flex-wrap: wrap;
	justify-content: center;
	gap: 100px;
	/* height: 80vh; */
	width: 90%;
	margin: auto;
}

.cards .divCards .card a img {
	width: 14rem;
    height: 50vh;
	border-radius: 0.5rem;
}

.cards .divCards .card a img:hover {
	transform: scale(103%);
	transition: transform 0.5s ease;
}

.cards .divCards .card ul {
	list-style: none;
}

.cards .divCards .card a {
	text-decoration: none;
	color: var(--dark-color);
}

.cards .divCards .card .btn {
	margin: 15px 0;
	/* background-color: red; */
	width: 45%;
}

.cards .divCards .card .bt {
	visibility: hidden;
}

.cards .divCards .card .btn a {
	color: var(--green-color);
	text-decoration: none;
	text-transform: uppercase;
	background-color: var(--dark-green-color);
	padding: 8px 10px;
	/* margin: 10px; */
	font-size: 12px;
	border-radius: 0.5rem;
}

.cards .divCards .card .btn a:hover {
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
				<li id="navName"><span>${icon }</span> ${name }</li>
				<li id="logout"><a href="logout">${logout }</a></li>
				<li><a href="home">Home</a></li>
				<li><a href="about">About</a></li>
				<li><a href="contact">Contact</a></li>
			</ul>
		</nav>
	</header>

	<section class="sectionHome">
		<div class="loginSignup">
			<a href="signup" id="sbt">Sign Up</a><a href="login" id="lbt">Login</a>
		</div>
	</section>

	<section class="cards">
		<div class="divCards">
			<div class="card">
				<a href=""><img
					src='<c:url value="/resources/image/carcard-1.jpg"></c:url>' alt="">
					<h1>
						Normal Wash:<i class="fa-solid fa-indian-rupee-sign">200</i>
					</h1>
					<ul>
						<li>Only Water Washing</li>
						<li>No Pollish</li>
						<li>No Vocuum Clean</li>
						<li>No Air Cleaner</li>
					</ul> </a>
				<div class="btn bt" id="btn1">
					<a href="nor">Book Now</a>
				</div>
			</div>
			<div class="card">
				<a href=""><img
					src='<c:url value="/resources/image/carcard-2.jpg"></c:url>' alt="">
					<h1>
						Medium Wash:<i class="fa-solid fa-indian-rupee-sign">300</i>
					</h1>
					<ul>
						<li>Water Wash</li>
						<li>Vocuum Cleaner</li>
						<li>Farm Wash</li>
						<li>No Pollish</li>
						<li>No Air Cleaner</li>
					</ul> </a>
				<div class="btn bt" id="btn2">
					<a href="medi">Book Now</a>
				</div>
			</div>
			<div class="card">
				<a href=""><img
					src='<c:url value="/resources/image/carcard-3.jpg"></c:url>' alt="">
					<h1>
						Premium Wash:<i class="fa-solid fa-indian-rupee-sign">400</i>
					</h1>
					<h2></h2>
					<ul>
						<li>Water Wash</li>
						<li>Farm Wash</li>
						<li>Vocuum Cleaner</li>
						<li>Pollish</li>
						<li>Air Cleaner</li>
					</ul> </a>
				<div class="btn bt" id="btn3">
					<a href="premi">Book Now</a>
				</div>
			</div>
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
	<script>
		let btn1 = document.getElementById("btn1");
		let btn2 = document.getElementById("btn2");
		let btn3 = document.getElementById("btn3");
		let sbt = document.getElementById("sbt");
		let lbt = document.getElementById("lbt");
		/* login.onclick = function() {
			show();
		} */

		${call }

		function show() {
			btn1.classList.remove("bt");
			btn2.classList.remove("bt");
			btn3.classList.remove("bt");
			sbt.classList.add("ls");
			lbt.classList.add("ls");
		}
	</script>
</body>

</html>