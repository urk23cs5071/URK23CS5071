<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Login - Concert Ticket Booking</title>
    <style>
        /* Reset box sizing */
        * {
            box-sizing: border-box;
        }

        /* Dark concert-themed background */
        body {
            margin: 0;
            height: 100vh;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #6a00ff, #a64dff);
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
            position: relative;
        }

        /* Overlay for better contrast */
        body::before {
            content: "";
            position: fixed;
            top: 0; left: 0; right: 0; bottom: 0;
            background: rgba(0, 0, 0, 0.6);
            z-index: 0;
        }

        /* Login container styling */
        .login-container {
            position: relative;
            z-index: 1;
            background: rgba(30, 0, 60, 0.85);
            padding: 50px 60px;
            border-radius: 15px;
            box-shadow: 0 0 30px #ff3c00;
            width: 360px;
            text-align: center;
            animation: fadeIn 1.2s ease forwards;
        }

        /* Heading */
        .login-container h1 {
            font-family: 'Bebas Neue', cursive, sans-serif;
            font-size: 3rem;
            margin-bottom: 30px;
            color: #ff3c00; /* Orange heading */
            letter-spacing: 6px;
            text-transform: uppercase;
            text-shadow: 0 0 12px #ff3c00;
            animation: pulse 2s infinite;
        }

        /* Form styling */
        form {
            display: flex;
            flex-direction: column;
            align-items: stretch;
        }

        label {
            font-weight: 600;
            margin-bottom: 8px;
            font-size: 14px;
            color: #ffa07a; /* Light orange label */
            text-align: left;
            text-shadow: none;
        }

        input[type="text"],
        input[type="password"] {
            padding: 14px 18px;
            margin-bottom: 25px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            background: #2a0050;
            color: #fff;
            box-shadow: inset 0 0 8px #4b0082;
            transition: box-shadow 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            box-shadow: 0 0 12px #ff3c00; /* Glowing on focus */
            outline: none;
            background: #3a006f;
        }

        input[type="submit"] {
            background: linear-gradient(45deg, #ff3c00, #ff8c00); /* Orange submit button */
            color: white;
            font-weight: 700;
            padding: 16px;
            border: none;
            border-radius: 50px;
            cursor: pointer;
            font-size: 18px;
            letter-spacing: 1.5px;
            box-shadow: 0 6px 20px rgba(255, 60, 0, 0.8);
            transition: background 0.3s ease, transform 0.3s ease;
        }

        input[type="submit"]:hover {
            background: linear-gradient(45deg, #ff8c00, #ff3c00); /* Darker on hover */
            transform: translateY(-3px);
        }

        /* Error message */
        .error-message {
            color: #ff4c4c;
            font-weight: 700;
            margin-bottom: 20px;
            font-size: 14px;
            text-shadow: none;
        }

        /* Link to add user */
        .add-user-link {
            margin-top: 25px;
            display: inline-block;
            color: #ff8c00; /* Light orange link */
            font-weight: 600;
            font-size: 14px;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .add-user-link:hover {
            color: #ffa94d; /* Lighter on hover */
            text-decoration: underline;
        }

        /* Animations */
        @keyframes pulse {
            0%, 100% {
                text-shadow: 0 0 12px #ff3c00, 0 0 20px #ff3c00;
            }
            50% {
                text-shadow: 0 0 20px #ff8c00, 0 0 35px #ff8c00;
            }
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Responsive */
        @media (max-width: 400px) {
            .login-container {
                width: 90%;
                padding: 40px 30px;
            }
            .login-container h1 {
                font-size: 2.2rem;
                letter-spacing: 4px;
            }
            input[type="submit"] {
                font-size: 16px;
                padding: 14px;
            }
        }
    </style>

    <!-- Google Fonts Bebas Neue -->
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet" />
</head>
<body>
    <div class="login-container">
        <h1>Login</h1>

        <% if (request.getAttribute("errorMessage") != null) { %>
            <p class="error-message"><%= request.getAttribute("errorMessage") %></p>
        <% } %>

        <form action="login" method="post">
            <!-- Hidden field to preserve redirect URL -->
            <input type="hidden" name="redirect" value="<%= request.getParameter("redirect") != null ? request.getParameter("redirect") : "" %>">

            <label for="username">Username</label>
            <input type="text" id="username" name="username" placeholder="Enter your username" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Enter your password" required>

            <input type="submit" value="Login">
        </form>

        <a href="addUser.jsp" class="add-user-link">Create a new account</a>
    </div>
</body>
</html>

