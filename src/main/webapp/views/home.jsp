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
	font-family: Arial, Helvetica, sans-serif;
}

body {
	background-color: #d4d5d7;   
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

header nav ul #navName {
	color: #CCFF90;
}

header nav ul #logout a {
	color: red;
}

.sectionHome {
	/* background-color: green; */
	margin-bottom: 20px 0;
	width: 95%;
	margin: 0 auto;
}

.sectionHome .loginSignup {
	background-image: url(/resources/image/carhome.jpg);
	background-size: cover;
	background-position: 30%;
	background-repeat: no-repeat;
	width: 100%;
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
	display: ${ hide};
}

.sectionHome .loginSignup button {
	color: var(--black-color);
	text-transform: uppercase;
	background-color: var(--white-color);
	padding: 15px 30px;
	margin: 10px;
	font-size: 18px;
	border-radius: 0.5rem;
}

.sectionHome .loginSignup button:hover {
	color: var(--white-color);
	background-color: var(--black-color);
	transition: background 1s ease;
}

.sectionHome .loginSignup a:hover {
	color: var(--white-color);
	background-color: var(--black-color);
	transition: background 1s ease;
}

/* ===================Section 2 Start======================= */
.sectionSecond {
	width: 95%;
	margin: 30px auto;
	display: flex;
	flex-wrap: wrap;
	justify-content: space-around;
	align-items: center;
	cursor: pointer;
}

.sectionSecond .card {
	width: 45vh;
	background: #fff;
	margin: 10px 0;
	height: 100%;
	padding: 10px;
	border: 1px solid gray;
}

.sectionSecond .card .icon {
	width: 100px;
	border-radius: 3.5rem;
	margin: 10px 0;
	border: 0.1rem solid black;
}

.sectionSecond .card h3 {
	margin: 10px 0;
}

/* ===================Section 2 end======================= */
/* ===================Section 3 start======================= */
.sectionThird {
	width: 97%;
	margin: 50px auto;
}

.sectionThird .headTitle {
	margin: 0 35px;
}

.sectionThird .headTitle p {
	color: blue;
	font-weight: 600;
	text-transform: uppercase;
	font-size: 12px;
	cursor: pointer;
}

.sectionThird .headTitle h1 {
	font-size: 40px;
	font-weight: 500;
	cursor: pointer;
}

.sectionThird .thirdCards {
	display: flex;
	flex-direction: row;
	flex-wrap: wrap;
	justify-content: space-around;
	align-items: center;
}

.sectionThird .thirdCards .card {
	background: #fff;
	width: 60vh;
	height: 100%;
	padding: 15px;
	margin: 10px 0;
	text-align: center;
}

.sectionThird .thirdCards .card .icon {
	width: 100px;
	height: 100px;
	border-radius: 3rem;
}

.sectionThird .thirdCards .card img {
	margin: 20px 0;
	width: 40vh;
	height: 40vh;
}

.sectionThird .thirdCards .card img:hover {
	transform: scale(110%);
	transition: transform 0.5s ease;
}

/* ===================Section 3 end======================= */

/* ===================Section 4 start======================= */
.sectionFourth {
	width: 95%;
	margin: 50px auto;
}

.sectionFourth .head {
	width: 100%;
	background: rgb(26, 24, 24);
	height: 30vh;
	display: flex;
	flex-direction: row;
	flex-wrap: nowrap;
	align-items: center;
	justify-content: space-around;
}

.sectionFourth .head span {
	font-size: 40px;
	color: #fff;
	cursor: pointer;
}

.sectionFourth .head p {
	color: gray;
	cursor: pointer;
	text-transform: uppercase;
}

.sectionFourth .img {
	background-image: url(/resources/image/car-wash-section4.jpg);
	width: 100%;
	height: 100vh;
	display: flex;
	background-size: cover;
	background-repeat: no-repeat;
	background-position-y: -137px;
	justify-content: center;
	flex-direction: column;
	align-content: center;
	align-items: center;
}

.sectionFourth .img h1 {
	font-size: 40px;
	color: #ffffff;
}

.sectionFourth .img a {
	color: #fff;
	text-decoration: none;
	padding: 10px;
	border-radius: 0.5rem;
	background: #1ca3e3;
	cursor: pointer;
	display: ${ hide};
}

/* ===================Section 4 end======================= */
/* ===================Section 5 start======================= */
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
	padding: 0px 15px;
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

.sectionFive .divCards .card ul li .fa-circle-xmark{
    color: red;
}

.sectionFive .divCards .card .btn {
	margin: 15px 0;
	/* background-color: red; */
	width: 100%;
}

.sectionFive .divCards .card .bt {
	visibility: hidden;
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

.sectionFive .divCards .card .btn a:hover {
	color: var(--white-color);
	background-color: var(--black-color);
	transition: background 1s ease;
}
/* ===================Section 5 end======================= */
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
			<a href="signup" id="sbt"><i class="fa-solid fa-user-plus"></i> Sign Up</a><a href="login" id="lbt"><i class="fa-solid fa-right-to-bracket"></i> Login</a>
		</div>
	</section>

	<!-- =======================Section 2 start============================ -->

	<section class="sectionSecond">
		<div class="card">
			<img class="icon "
				src="<c:url value="/resources/image/contactless.png"></c:url>"
				alt="contactless-picture">
			<h3>Contactless Washing</h3>
			<p>Touchless car washes rely on high-pressure water and
				specialized detergents to remove dirt and grime</p>
		</div>
		<div class="card">
			<img class="icon"
				src="<c:url value="/resources/image/Safety-material.jpg"></c:url>"
				alt="safety-material-picture">
			<h3>Safety Materials</h3>
			<p>The vacuum's suction power is crucial in ensuring that it can
				effectively clean your car's interior</p>
		</div>
		<div class="card">
			<img class="icon "
				src="<c:url value="/resources/image/polish-vector.jpg"></c:url>"
				alt="pollish-vector-picture">
			<h3>Modern Equipment</h3>
			<p>The vacuum suction power is crucial in ensuring that it can
				effectively clean your car interior</p>
		</div>
		<div class="card">
			<img class="icon "
				src="<c:url value="/resources/image/extensive-shine.jpg"></c:url>"
				alt="extensive-cleaning-picture">
			<h3>Extensive Cleaning</h3>
			<p>Car polish is used to remove scratches, and whereas car wax is
				used to protect and shine the paint</p>

		</div>
	</section>

	<!-- =======================Section 2 End============================ -->
	<!-- =======================Section 3 start============================ -->

	<section class="sectionThird">
		<div class="headTitle">
			<p>What We're offering</p>
			<h1>We are dedicated to providing our best service to you</h1>
		</div>
		<div class="thirdCards">
			<div class="card">
				<img class="icon"
					src="<c:url value="/resources/image/car-wash-service.webp"></c:url>"
					alt="full-service-washing-icon">
				<h3>Full Services Wash</h3>
				<p>Full Service wash is cleaning inside and outside help water
					and farm for shine use polish and wax</p>
				<img src="<c:url value="/resources/image/car-wash1.jpg"></c:url>"
					alt="car-washing-picture">
			</div>
			<div class="card">
				<img class="icon"
					src="<c:url value="/resources/image/interior-car.webp"></c:url>"
					alt="interior-car-washing-icon">
				<h3>Interior Car Washing</h3>
				<p>Interior car washing to hand washing inside to cleanig and
					use pollish and wax for shine interior</p>
				<img src="<c:url value="/resources/image/car-wash2.jpg"></c:url>"
					alt="car-washing-picture">
			</div>
			<div class="card">
				<img class="icon"
					src="<c:url value="/resources/image/auto-detailing.png"></c:url>"
					alt="auto-detailing-icon">
				<h3>Auto Detailing</h3>
				<p>Auto detailing car washing help of use pressure machine and
					air cleaning and contactless car washing</p>
				<img src="<c:url value="/resources/image/car-wash3.jpg"></c:url>"
					alt="car-washing-picture">
			</div>
		</div>
	</section>

	<!-- =======================Section 3 End============================ -->

	<!-- =======================Section 4 Start============================ -->

	<section class="sectionFourth">
		<div class="head">
			<div class="headTitle">
				<span>22</span>
				<p>Year of Experience</p>
			</div>
			<div class="headTitle">
				<span>48 K</span>
				<p>total car washed</p>
			</div>
			<div class="headTitle">
				<span>32 K</span>
				<p>Clients Satisfaction</p>
			</div>
			<div class="headTitle">
				<span>12</span>
				<p>Awards & Recognition</p>
			</div>
		</div>
		<div class="img">
			<h1>We Provides Fast and Efficient Service Just For You</h1>
			<a href="signup">Register Now</a>
		</div>
	</section>

	<!-- =======================Section 4 End============================ -->
	<!-- =======================Section 5 Start============================ -->

	<section class="sectionFive">
		<h1 class="headTitle">Choose Your Best Package</h1>
		<div class="divCards">
			<div class="card">
				<h3>Basic Wash</h3>
				<p>A basic washing water and hand wash and drying car</p>
				<span><i class="fa-solid fa-indian-rupee-sign"> 200</i></span>
				<p>Duration: 15 Minutes</p>
				<ul>
					<li class="listHead">Whats Included:</li>
					<li><i class="fa-regular fa-circle-check"></i> Exterior hand
						wash and drying</li>
					<li><i class="fa-regular fa-circle-xmark"></i> No Pollish</li>
					<li><i class="fa-regular fa-circle-xmark"></i> No Farm Wash</li>
					<li><i class="fa-regular fa-circle-xmark"></i> No Vocuum
						Cleaning</li>
					<li><i class="fa-regular fa-circle-xmark"></i> No Air Cleaning</li>
				</ul>
				<div class="btn bt" id="btn1">
					<a href="nor">Select Package</a>
				</div>
			</div>
			<div class="card">
				<h3>Deluxe Detailing</h3>
				<p>A deluxe detailing washing water and drying with vocuum cleaning and farm wash</p>
				<span><i class="fa-solid fa-indian-rupee-sign"> 300</i></span>
				<p>Duration: 30 Minutes</p>
				<ul>
					<li class="listHead">Whats Included:</li>
					<li><i class="fa-regular fa-circle-check"></i> Exterior hand
						wash and drying</li>
					<li><i class="fa-regular fa-circle-check"></i> Vocuum Cleaning</li>
					<li><i class="fa-regular fa-circle-check"></i> Farm Wash</li>
					<li><i class="fa-regular fa-circle-xmark"></i> No Pollish</li>
					<li><i class="fa-regular fa-circle-xmark"></i> No Air Cleaning</li>
				</ul>
				<div class="btn bt" id="btn2">
					<a href="medi">Select Package</a>
				</div>
			</div>
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
				<div class="btn bt" id="btn3">
					<a href="premi">Select Package</a>
				</div>
			</div>
		</div>
	</section>

	<!-- =======================Section 5 end============================ -->

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

		${ call}

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