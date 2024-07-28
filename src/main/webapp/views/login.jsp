<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
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

.sectionForm form div .forgotSignup {
	text-decoration: none;
	color: var(--dark-color);
	cursor: pointer;
}

.sectionForm form .btn:hover {
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

	<section class="sectionForm">
		<h3>Welcome Login</h3>
		<form action="loginuser" method="post" onsubmit="return validation()">
			<input type="tel" name="phoneNumber" id="num"
				placeholder="Enter Your Number" value="${num }">
			<p id="numText" class="error"></p>
			<input type="password" id="pass" name="password"
				placeholder="Enter Your Password" value="${pass }">
			<p id="passText" class="error"></p>
			<button type="submit" id="btn" class="btn">Login</button>
			<hr>
			<div>
				<a href="resetpassword" class="forgotSignup">Forgot password ?</a> <a
					href="signup" class="forgotSignup">Sign up</a>
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
         let num = document.getElementById("num").value;
         let pas = document.getElementById("pass").value;
         let pass = parseInt(pas)
         console.log(num);
         console.log(pass);
         let numText;
         let passText;
         if (!num) {
             numText = "Phone Number can not be empty !!";
             if (!pass) {
                 passText = "Password can not be empty !!";
             }
             else {
                 passText = "Password in incorrect !!"
             }
             document.getElementById("numText").innerHTML = numText;
             document.getElementById("passText").innerHTML = passText;
             return returnval = false;
         }
         else {
             if (num < 9999999999 && num > 1000000000) {
                 numText = ""
                 document.getElementById("numText").innerHTML = numText;
                 if (!pass) {
                     passText = "Password can not be empty !!";
                     document.getElementById("passText").innerHTML = passText;
                     return returnval = false;
                 } else {
                     if (pass > 100000 && pass < 999999999999) {
                         passText = "";
                     } else {
                    	 passText = "Password must be between 6-12 digit only number!!";
                         document.getElementById("passText").innerHTML = passText;
                         return returnval = false;
                     }
                 }

             }
             else {

                 if (!pass) {
                     passText = "Password can not be empty !!";
                 } else {
                     if (pass > 100000 && pass < 999999999999) {
                         passText = ""
                     } else {
                    	 passText = "Password must be between 6-12 digit only number!!";
                     }
                 }
                 numText = "Phone Number must be 10 digit !!"
                 document.getElementById("numText").innerHTML = numText;
                 document.getElementById("passText").innerHTML = passText;
                 return returnval = false;
             }
             
         }

     }
	 
     /* valid(); */
     
     ${valid}

     function valid(){
         /* let numText; */
         let passText;
         if(true){
             /* numText = "Phone Number is incorrect !!" */
             passText = "Password is incorrect !!"
             /* document.getElementById("numText").innerHTML = numText; */
             document.getElementById("passText").innerHTML = passText;
         }
     }
    </script>
</body>
</html>