<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
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

        .about {
            background-image:url("/resources/image/booking-bg.jpg");
            background-size:cover;
            background-repeat:no-repeat;
            height: 83vh;
            display: flex;
            align-content: center;
            justify-content: center;
            flex-wrap: wrap;
        }

        .about div {
            margin: 15px 0;
            text-align: center;
            background-color: #fff;
            width: 45%;
            height: 60%;
            padding: 15px;

        }

        .about div h1 {
            cursor: pointer;
            text-transform: uppercase;
            font-size: 30px;
            color: #000;
            margin-bottom: 10px;
        }

        .about div h2 {
            cursor: pointer;
            color: #000;
            margin-bottom: 10px;
        }

        .about div p {
            cursor: pointer;
            /* text-transform: uppercase; */
            /* font-size: 30px; */
            color: #000;
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

    <section class="about">
        <div>
            <h1>About us</h1>
            <h2>CarWash</h2>
            <p>Ceramic wash is like a unique blend of ingredients that sticks to your car, giving it protection and the ability to flex and bend in the cleaning process. When you clean your car, it helps make the process smoother and faster.</p>
        </div>
    </section>

    <footer>
        <div class="copyRight">
            <h3>&copy; 2024.All Rights Reserved.www.carwash.com</h3>
        </div>
        <div class="icons"><a href=""><i class="fa-brands fa-instagram"></i></a><a href=""><i
                    class="fa-brands fa-square-twitter"></i></a><a href=""><i
                    class="fa-brands fa-square-facebook"></i></a>
        </div>
    </footer>
</body>

</html>