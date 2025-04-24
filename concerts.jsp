<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Available Concerts - Concert Ticket Booking</title>
    <style>
        /* Reset box sizing */
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: #fff;
            min-height: 100vh;
            padding: 40px 20px;
        }

        h1 {
            text-align: center;
            font-family: 'Bebas Neue', cursive, sans-serif;
            font-size: 3.5rem;
            letter-spacing: 6px;
            margin-bottom: 40px;
            color: #ff3c00;
            text-shadow: 0 0 10px #ff3c00;
        }

        .concert-list {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 30px;
            max-width: 1100px;
            margin: 0 auto 60px auto;
        }

        .concert-card {
            background: rgba(20, 20, 20, 0.85);
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(255, 69, 0, 0.7);
            padding: 25px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .concert-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 0 35px rgba(255, 69, 0, 1);
        }

        .concert-title {
            font-family: 'Bebas Neue', cursive, sans-serif;
            font-size: 1.8rem;
            margin-bottom: 10px;
            color: #ff6f3c;
            text-shadow: 0 0 6px #ff6f3c;
        }

        .concert-details p {
            margin: 6px 0;
            font-size: 1rem;
            color: #f0f0f0;
            line-height: 1.4;
        }

        form {
            margin-top: 15px;
            display: flex;
            align-items: center;
            gap: 10px;
            flex-wrap: wrap;
        }

        input[type="number"] {
            width: 70px;
            padding: 8px 10px;
            border-radius: 6px;
            border: 1.8px solid #ccc;
            font-size: 1rem;
            transition: border-color 0.3s ease;
        }

        input[type="number"]:focus {
            border-color: #ff6f3c;
            outline: none;
        }

        input[type="submit"] {
            background: linear-gradient(45deg, #ff3c00, #ff8c00);
            color: white;
            border: none;
            padding: 10px 25px;
            border-radius: 50px;
            font-weight: 700;
            cursor: pointer;
            font-size: 1rem;
            box-shadow: 0 6px 15px rgba(255, 60, 0, 0.7);
            transition: background 0.3s ease, transform 0.3s ease;
        }

        input[type="submit"]:hover {
            background: linear-gradient(45deg, #ff8c00, #ff3c00);
            transform: translateY(-3px);
        }

        .home-link {
            display: block;
            text-align: center;
            color: #ff6f3c;
            font-weight: 700;
            font-size: 1.1rem;
            text-decoration: none;
            margin-top: 20px;
            transition: color 0.3s ease;
        }

        .home-link:hover {
            color: #ffa07a;
            text-decoration: underline;
        }

        /* Responsive */
        @media (max-width: 600px) {
            h1 {
                font-size: 2.5rem;
                letter-spacing: 3px;
            }

            .concert-card {
                padding: 20px;
            }

            input[type="submit"] {
                padding: 10px 18px;
                font-size: 0.9rem;
            }
        }
    </style>

    <!-- Google Fonts Bebas Neue -->
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet" />
</head>
<body>
    <h1>Available Concerts</h1>

    <div class="concert-list">
        <c:forEach var="concert" items="${concerts}">
            <div class="concert-card">
                <div class="concert-title">${concert.concertName}</div>
                <div class="concert-details">
                    <p><strong>Artist:</strong> ${concert.artist}</p>
                    <p><strong>Date:</strong> ${concert.concertDate}</p>
                    <p><strong>Venue:</strong> ${concert.venue}</p>
                    <p><strong>Available Tickets:</strong> ${concert.availableTickets}</p>
                    <p><strong>Price:</strong> $${concert.ticketPrice}</p>
                </div>
                <form action="book" method="post">
                    <input type="hidden" name="concertId" value="${concert.concertId}" />
                    <label for="numTickets_${concert.concertId}" style="display:none;">Number of Tickets</label>
                    <input id="numTickets_${concert.concertId}" type="number" name="numTickets" value="1" min="1" max="${concert.availableTickets}" required />
                    <input type="submit" value="Book Now" />
                </form>
            </div>
        </c:forEach>
    </div>

    <a href="index.jsp" class="home-link">← Back to Home</a>
</body>
</html>

