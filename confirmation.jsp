<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Confirmation</title>
    <style>
        /* General styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to bottom, #6a00ff, #a64dff); /* Blue-purple gradient */
            margin: 0;
            padding: 20px;
            color: #fff;
            text-align: center;
        }

        .container {
            max-width: 600px;
            margin: 20px auto;
            background-color: rgba(0, 0, 0, 0.7); /* Dark transparent background */
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
        }

        h1 {
            color: #ffa500; /* Orange */
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
            font-size: 2.5em;
            margin-bottom: 30px;
        }

        p {
            line-height: 1.6;
            margin-bottom: 15px;
        }

        .button {
            display: inline-block;
            background-color: #ffa500;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 12px 20px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s;
            text-decoration: none;
        }

        .button:hover {
            background-color: #ff8c00;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Payment Successful!</h1>
        <p>Your booking and payment have been processed successfully.</p>
        <p>Thank you for booking with us!</p>
        <a href="concerts" class="button">Back to Concerts</a>
    </div>
</body>
</html>

