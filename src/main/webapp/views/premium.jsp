<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Book</title>
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

.sectionFive {
 background-image:url("/resources/image/booking-bg.jpg");
 background-size:cover;
 background-repeat:no-repeat;
}


.sectionFive .divCards {
	padding: 15px 0;
	display: flex;
	flex-direction: row;
	flex-wrap: wrap;
	justify-content: space-evenly;
	gap: 20px;
	/* height: 80vh; */
	width: 90%;
	margin: auto;
}

.sectionFive .headTitle {
	text-align: center;
	font-size: 50px;
	font-weight: 500;
	margin: 10px 0;
	cursor: pointer;
}

.sectionFive .divCards .card {
	width: 300px;
	height: 100%;
	border: 1px solid black;
	padding: 15px;
	cursor: pointer;
	background-color: var(--white-color);
	/* overflow-y: scroll; */
}

.sectionFive .divCards .card h3 {
	font-size: 25px;
	font-weight: 500;
	margin: 15px 0;
}

.sectionFive .divCards .card p {
	margin: 10px 0;
}

.sectionFive .divCards .card span {
	font-size: 25px;
	font-weight: bold;
}

.sectionFive .divCards .card ul {
	list-style: none;
}

.sectionFive .divCards .card ul .listHead {
	font-weight: 600;
}

.sectionFive .divCards .card ul li {
	padding-bottom: 5px;
	margin: 10px 0;
	border-bottom: 1px solid gray;
}

.sectionFive .divCards .card ul li i {
	color: #1ca3e3;
}

.sectionFive .divCards .card .btn {
	display: flex;
	flex-direction: row;
	flex-wrap: wrap;
	gap: 10px;
}

.sectionFive .divCards .card .btn a {
	color: var(--white-color);
	text-decoration: none;
	text-transform: uppercase;
	background-color: #1ca3e3;
	padding: 10px 20px;
	/* margin: 10px; */
	font-size: 10px;
	border-radius: 0.5rem;
}

.sectionFive .divCards .card .btn form .b {
	color: var(--white-color);
	text-decoration: none;
	text-transform: uppercase;
	background-color: #1ca3e3;
	padding: 10px 20px;
	/* margin: 10px; */
	font-size: 10px;
	border-radius: 0.5rem;
}

.sectionFive .divCards .card .btn a:hover {
	color: var(--white-color);
	background-color: var(--black-color);
	transition: background 1s ease;
}

.sectionFive .divCards .card .btn form .b:hover {
	color: var(--white-color);
	background-color: var(--black-color);
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
				<li id="navName"><span>${icon }</span> ${name }</li>
				<li id="logout"><a href="logout">${logout }</a>
				<li><a href="home">Home</a></li>
				<li><a href="about">About</a></li>
				<li><a href="contact">Contact</a></li>
			</ul>
		</nav>
	</header>

	<section class="sectionFive" id="cardSec">
		<div class="divCards">
			<div class="card">
				<h3>Premium Shine</h3>
				<p>A premium shine washing water and drying with vocuum cleaning and farm wash, pollish, air cleaning</p>
				<span><i class="fa-solid fa-indian-rupee-sign"> 400</i></span>
				<p>Duration: 45 Minutes</p>
				<ul>
					<li class="listHead">Whats Included:</li>
					<li><i class="fa-regular fa-circle-check"></i> Exterior hand
						wash and drying</li>
					<li><i class="fa-regular fa-circle-check"></i> Farm Wash</li>
					<li><i class="fa-regular fa-circle-check"></i> Vocuum Cleaning</li>
					<li><i class="fa-regular fa-circle-check"></i> Pollish</li>
					<li><i class="fa-regular fa-circle-check"></i> Air Cleaning</li>
				</ul>

				<div class="btn">
					<!-- <a href="">Confirm</a> -->
					<form action="premium">
						<button type="submit" class="b" id="btn">Confirm</button>
					</form>
					<a href="cardetail">Show Booking</a>
				</div>
			</div>
		</div>

	</section>
	<section class="container" id="popup">
		<div class="popup">
			<i class="fa-solid fa-circle-check"></i>
			<h2>Thank You!</h2>
			<p>Your booking has been successfully submitted. Thanks!</p>
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
	<script>
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
	</script>
</body>

</html>