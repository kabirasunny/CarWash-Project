<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contact</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
	rel="stylesheet">
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

body{
    background-image:url("/resources/image/booking-bg.jpg");
    background-size:cover;
    background-repeat:no-repeat;
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

header nav ul #navName {
	color: #CCFF90;
}

header nav ul #logout a {
	color: red;
}

.location {
	height: 90%;
	display: flex;
	justify-content: center;
	flex-wrap: wrap;
}

.location div {
	margin: 15px 0;
	text-align: center;
	background:#fff;
	width: 90%;
	height: 30%;
	padding: 50px;
}

.location div h1 {
	cursor: pointer;
	text-transform: uppercase;
	font-size: 30px;
	color: #000;
	margin-bottom: 10px;
}

.location div h3 {
	cursor: pointer;
	text-transform: uppercase;
	/* font-size: 30px; */
	color: #000;
}

.contactForm {
	height: 100%;
	margin: 10px 0;
}

.contactForm div {
	padding: 20px 0;
	background:#fff;
	width: 90%;
	margin: auto;
}

.contactForm div form {
	display: flex;
	flex-direction: column;
	width: 80%;
	margin: auto;
	gap: 10px;
}

.contactForm div form h2 {
	text-transform: uppercase;
	font-weight: 100;
	color: #000;
}

.contactForm div form input {
	padding: 10px;
	border-radius: 0.5rem;
	border: 1px solid black;
}

.contactForm div form textarea {
	padding: 10px;
	border-radius: 0.5rem;
	border: 1px solid black;
}

.contactForm div form button {
	width: 100px;
	padding: 8px;
	border-radius: 0.5rem;
	border: 1px solid black;
	cursor: pointer;
}

.contactForm div form button:hover {
	color: var(--white-color);
	background-color: #1ca3e3;
	transition: background 1s ease;
}

.container {
	position: absolute;
	top: 0;
	left: 50%;
	transform: translate(-50%, -50%) scale(0.1);
	display: flex;
	flex-wrap: wrap;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	gap: 10px;
	visibility: hidden;
	transition: transform 0.4s, top 0.4s;
}

.open-popup {
	visibility: visible;
	top: 50%;
	transform: translate(-50%, -50%) scale(1);
}

.container .popup {
	background-color: rgb(209, 203, 203);
	padding: 15px;
	text-align: center;
	border-radius: 0.5rem;
}

.container .popup i {
	font-size: 100px;
	border-radius: 10rem;
	background-color: green;
}

.container .popup h2 {
	font-size: 30px;
	color: var(--dark-color);
}

.container .popup p {
	font-size: 18px;
	color: var(--dark-color);
}

.container .popup .btn2 {
	width: 100%;
	margin-top: 15px;
	padding: 10px 0;
	background-color: var(--dark-green-color);
	color: var(--green-color);
	border: 0;
	outline: none;
	font-size: 18px;
	border-radius: 1rem;
	cursor: pointer;
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
				<li id="navName"><span>${icon }</span>${name }</li>
				<li id="logout"><a href="logout">${logout }</a></li>
				<li><a href="home">Home</a></li>
				<li><a href="about">About</a></li>
				<li><a href="contact">Contact</a></li>
			</ul>
		</nav>
	</header>

	<section class="location">
		<div>
			<h1>
				<i class="fa-solid fa-location-dot"></i> unit 0123, abc building,
				bussiness park
			</h1>
			<h3>Contact-us 0123-00000</h3>
		</div>
	</section>

	<section class="contactForm">
		<div>
			<form action="feedback" method="post">
				<h2>Feedback</h2>
				<input type="text" required name="" id="" placeholder="Name">
				<input type="email" required name="" id="" placeholder="Email">
				<input type="text" required name="" id="" placeholder="Subject">
				<textarea name="" required id="" placeholder="Share your thoughts"></textarea>
				<button type="submit" class="b" id="btn">Send</button>
			</form>
		</div>
	</section>

	<section class="container" id="popup">
		<div class="popup">
			<i class="fa-solid fa-circle-check"></i>
			<h2>Thank You!</h2>
			<p>Your feedback has been submitted. Thanks!</p>
			<button type="button" class="btn2" id="btn2">OK</button>
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
	<!-- 	<script>
		let confirm = document.getElementById("btn");
		confirm.onclick = function() {
			openPopup()
		};
		let ok = document.getElementById("btn2");
		ok.onclick = function() {
			closePopup()
		};

		let popup = document.getElementById("popup");
		let cardSec = document.getElementById("cardSec");

		function openPopup() {
			popup.classList.add("open-popup");
			cardSec.classList.add("hidd");

		}
		function closePopup() {
			popup.classList.remove("open-popup");
			cardSec.classList.remove("hidd");
		}
	</script> -->
</body>

</html>