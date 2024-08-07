<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Signup</title>
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

.sectionForm {
	background-image:url("/resources/image/booking-bg.jpg");
    background-size:cover;
    background-repeat:no-repeat;
	height: 90%;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
}

.sectionForm h3 {
	font-size: 30px;
	color: #fff;
	margin: 5px;
}

.sectionForm form {
	width: 40%;
	padding: 50px;
	display: flex;
	flex-direction: column;
	gap: 12px;
	background-color: #fff;
	margin: 20px 0;
}

.sectionForm form input {
	font-size: 18px;
	padding: 10px;
	border-radius: 0.5rem;
	border: 1px solid black;
}

.sectionForm form .btn {
	cursor: pointer;
	border: 0;
	width: 50%;
	margin: auto;
	padding: 10px;
	border-radius: 0.3rem;
	color: #fff;
	background-color: #1ca3e3;
}

.sectionForm form .btn:hover {
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

.error {
	color: red;
	display: none;
	margin: 0;
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

	<section class="sectionForm" id="secForm">
		<h3>Sign Up</h3>
		<form action="register" method="post" onsubmit="return validation()" novalidate="novalidate">
			<input type="tel" required name="phoneNumber" id="numid"
				placeholder="Enter Your Number" value="${number }">
				<p id="numText" class="error" style="display:${ showMsg}">${numText }</p>
			<%-- <div class="error">
				<form:errors path="carWash.phoneNumber" />
			</div> --%>
			<input type="email" required name="email" id="emailid"
				placeholder="Enter Your Email" value="${email }">
				<p id="emailText" class="error"></p>
			<%-- <div class="error">
				<form:errors path="carWash.email" />
			</div> --%>
			<input type="text" required name="fullname" id="fullnameid"
				placeholder="Enter Your Full Name" value="${name }">
				 <p id="fullnameText" class="error"></p>
			<%-- <div class="error">
				<form:errors path="carWash.fullname" />
			</div> --%>
			<input type="password" required name="password" id="passid"
				placeholder="Set Your Password" value="${password }">
			   <p id="passText" class="error"></p>
			<button type="submit" class="btn" id="btn">Submit</button>
		</form>

	</section>

	<!--  Here i will work later because this is popup for register-->
	<!-- 	<section class="container" id="popup">
		<div class="popup">
			<i class="fa-solid fa-circle-check"></i>
			<h2>Thank You!</h2>
			<p>Your booking has been successfully submitted. Thanks!</p>
			<button type="button" class="btn2" id="btn2">OK</button>
		</div>
	</section> -->

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
        let num = document.getElementById("numid").value;
        let number = parseInt(num);
        let email = document.getElementById("emailid").value;
        let fullname = document.getElementById("fullnameid").value;
        let pass = document.getElementById("passid").value;
        let numText;
        let emailText;
        let fullnameText;
        let passText;

        if (number < 9999999999 && number > 1000000000) {
            numText = "";
            document.getElementById("numText").innerHTML = numText;
            if (!email) {
            	document.getElementById("numText").style.display="none";
                document.getElementById("emailText").style.display="block";
                emailText = "email can not be empty !!";
                document.getElementById("emailText").innerHTML = emailText;
                return returnval = false;

            } else {
            	document.getElementById("emailText").style.display="none";
                emailText = "";
                document.getElementById("emailText").innerHTML = emailText;
                if (!fullname) {
                	document.getElementById("fullnameText").style.display="block";
                    fullnameText = "fullname can not be empty !!";
                    document.getElementById("fullnameText").innerHTML = fullnameText;
                    return returnval = false;

                } else {
                	document.getElementById("fullnameText").style.display="none";
                    fullnameText = "";
                    document.getElementById("fullnameText").innerHTML = fullnameText;
                    if (!pass) {
                    	document.getElementById("passText").style.display="block";
                        passText = "password can not be empty !!";
                        document.getElementById("passText").innerHTML = passText;
                        return returnval = false;
                    } else {
                    	document.getElementById("passText").style.display="none";
                        passText = "";
                        document.getElementById("passText").innerHTML = passText;
                        if (pass > 100000 && pass < 999999999999) {
                        	document.getElementById("passText").style.display="none";
                            passText = "";
                            document.getElementById("passText").innerHTML = passText;
                        } else {
                        	document.getElementById("passText").style.display="block";
                            passText = "password must be between 6-12 digit !!";
                            document.getElementById("passText").innerHTML = passText;
                            return returnval = false;
                        }
                        return returnval = true;
                    }
                    return returnval = true;
                }

            }
            return returnval = true;

        } else {
        	document.getElementById("numText").style.display="block";
            numText = "number must be 10 digit !!";
            document.getElementById("numText").innerHTML = numText;
            return returnval = false;
        }
    }
/* 		let submit = document.getElementById("btn");
		submit.onclick = function() {
			openPopup()
		};
		let ok = document.getElementById("btn2");
		ok.onclick = function() {
			closePopup()
		};

		let popup = document.getElementById("popup");
		let secForm = document.getElementById("secForm");

		function openPopup() {
			popup.classList.add("open-popup");
			secForm.classList.add("hidd");
		}

		function closePopup() {
			popup.classList.remove("open-popup");
			secForm.classList.remove("hidd");
		} */
	</script>

</body>

</html>