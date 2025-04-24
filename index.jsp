<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Concert Ticket Booking</title>
    <style>
        /* Background and layout */
        body {
            background-image: url('images/image.jpg'); /* Use relative path to deployed image */
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
            background-attachment: fixed;
            margin: 0;
            min-height: 100vh;

            /* Flexbox centering */
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #fff;
            text-shadow: 2px 2px 8px rgba(0,0,0,0.9);
        }

        /* Overlay for contrast */
        .overlay {
            position: fixed;
            top: 0; left: 0; right: 0; bottom: 0;
            background: rgba(0,0,0,0.6);
            z-index: 0;
        }

        /* Main container */
        .center-content {
            position: relative;
            z-index: 1;
            text-align: center;
            background: rgba(20, 20, 20, 0.75);
            padding: 50px 80px;
            border-radius: 15px;
            box-shadow: 0 0 30px rgba(255, 69, 0, 0.8);
            max-width: 500px;
            animation: fadeIn 1.5s ease forwards;
        }

        /* Headings */
        h1 {
            font-family: 'Bebas Neue', cursive, sans-serif;
            font-size: 4rem;
            margin-bottom: 10px;
            color: #ff3c00;
            letter-spacing: 5px;
            text-transform: uppercase;
            animation: pulse 2s infinite;
        }

        h2 {
            font-weight: 400;
            font-size: 1.8rem;
            margin-bottom: 30px;
            color: #ffa07a;
        }

        /* Button styling */
        a {
            display: inline-block;
            background: linear-gradient(45deg, #ff3c00, #ff8c00);
            color: #fff;
            font-weight: 700;
            font-size: 1.2rem;
            padding: 15px 40px;
            border-radius: 50px;
            text-decoration: none;
            box-shadow: 0 6px 15px rgba(255, 60, 0, 0.7);
            transition: all 0.3s ease;
            letter-spacing: 1.5px;
        }

        a:hover, a:focus {
            background: linear-gradient(45deg, #ff8c00, #ff3c00);
            box-shadow: 0 8px 25px rgba(255, 140, 0, 0.9);
            transform: translateY(-3px);
            outline: none;
        }

        /* Animations */
        @keyframes pulse {
            0%, 100% {
                text-shadow: 0 0 8px #ff3c00, 0 0 20px #ff3c00;
            }
            50% {
                text-shadow: 0 0 20px #ff8c00, 0 0 40px #ff8c00;
            }
        }

        @keyframes fadeIn {
            from {opacity: 0; transform: translateY(20px);}
            to {opacity: 1; transform: translateY(0);}
        }

        /* Responsive */
        @media (max-width: 600px) {
            .center-content {
                padding: 30px 20px;
                max-width: 90%;
            }

            h1 {
                font-size: 3rem;
                letter-spacing: 3px;
            }

            h2 {
                font-size: 1.2rem;
            }

            a {
                font-size: 1rem;
                padding: 12px 30px;
            }
        }
    </style>

    <!-- Optional: Include Google Fonts Bebas Neue for cool heading font -->
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet" />
</head>
<body>
    <div class="overlay"></div>
    <div class="center-content">
        <h1>LET'S ROCK THE SHOW</h1>
        <h2>Welcome to Concert Ticket Booking</h2>
        <a href="concerts">View Concerts</a>
    </div>
</body>
</html>
