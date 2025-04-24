<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment - Concert Ticket Booking</title>
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

        /* Form styles */
        label {
            display: block;
            text-align: left;
            margin-bottom: 8px;
            color: #eee;
        }

        input[type="text"],
        input[type="month"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: none;
            border-radius: 5px;
            background-color: rgba(255, 255, 255, 0.1);
            color: #fff;
            box-sizing: border-box;
        }

        input[type="text"]:focus,
        input[type="month"]:focus,
        input[type="password"]:focus {
            outline: none;
            box-shadow: 0 0 8px rgba(255, 165, 0, 0.5);
        }

        input[type="submit"] {
            background-color: #ffa500;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 12px 20px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s;
            width: auto;
            margin: 20px auto 0;
            display: block;
        }

        input[type="submit"]:hover {
            background-color: #ff8c00;
        }

        /* Back to concerts link */
        .back-link {
            display: block;
            margin-top: 20px;
            color: #ffa500;
            text-decoration: none;
            font-weight: bold;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Payment Page</h1>

        <p>Concert ID: ${param.concertId}</p>
        <p>Number of Tickets: ${param.numTickets}</p>

        <form action="processPayment" method="post">
            <input type="hidden" name="concertId" value="${param.concertId}">
            <input type="hidden" name="numTickets" value="${param.numTickets}">

            <label for="cardNumber">Card Number:</label>
            <input type="text" id="cardNumber" name="cardNumber" required placeholder="1234 5678 9012 3456">

            <label for="expiry">Expiry Date:</label>
            <input type="month" id="expiry" name="expiry" required>

            <label for="cvv">CVV:</label>
            <input type="password" id="cvv" name="cvv" required placeholder="123">

            <input type="submit" value="Pay Now">
        </form>

        <a href="concerts" class="back-link">Cancel and Return to Concerts</a>
    </div>
</body>
</html>


