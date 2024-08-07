<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>error</title>
<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    font-weight: 400;
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

.success {
	/* background-color: red; */
	height: 85vh;
}

.success .container {
	cursor: pointer;
	height: 85vh;
	display: flex;
	gap: 10px;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	background-color: var(--greysshade-color);
	width: 90%;
	margin: auto;
}

.success .container h1 {
	color: var(--dark-color);
	font-size: 50px;
}

.success .container h3 {
	color: var(--dark-color);
	font-size: 30px;
}

.success .container p {
	color: var(--dark-color);
	font-size: 18px;
}

.success .container a {
	text-decoration: none;
	text-transform: uppercase;
	background-color: var(--dark-green-color);
	color: var(--green-color);
	padding: 10px 25px;
	border-radius: 0.5rem;
}

.success .container a:hover {
	color: var(--white-color);
	background-color: var(--black-color);
	transition: background 1s ease;
}
</style>
</head>

<body>
	<section class="success">
		<div class="container">
			<h1>Oops! Sorry</h1>
			<h3>Something Went Wrong!</h3>
			<p>sorry, an error has occured, Requested page not found</p>
			<a href="home">Back Home</a>
		</div>
	</section>
</body>

</html>