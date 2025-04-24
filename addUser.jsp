<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add User - Concert Ticket Booking</title>
    <style>
        /* Reset box sizing */
        * {
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2);
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #333;
        }

        .add-user-container {
            background: white;
            padding: 40px 50px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
            width: 380px;
            text-align: center;
        }

        .add-user-container h1 {
            color: #764ba2;
            margin-bottom: 30px;
            font-size: 28px;
            font-weight: 700;
            letter-spacing: 1.2px;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: stretch;
        }

        label {
            font-weight: 600;
            margin-bottom: 6px;
            text-align: left;
            font-size: 14px;
            color: #555;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"] {
            padding: 12px 15px;
            margin-bottom: 20px;
            border: 1.8px solid #ccc;
            border-radius: 6px;
            font-size: 16px;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="password"]:focus,
        input[type="email"]:focus {
            border-color: #764ba2;
            outline: none;
        }

        input[type="submit"] {
            background-color: #764ba2;
            color: white;
            font-weight: 700;
            padding: 14px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #5a3580;
        }

        .error-message {
            color: #d32f2f;
            margin-bottom: 20px;
            font-weight: 600;
            font-size: 14px;
        }

        .login-link {
            margin-top: 15px;
            display: inline-block;
            color: #764ba2;
            text-decoration: none;
            font-weight: 600;
            font-size: 14px;
            transition: color 0.3s ease;
        }

        .login-link:hover {
            color: #5a3580;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="add-user-container">
        <h1>Add User</h1>

        <% if (request.getAttribute("errorMessage") != null) { %>
            <p class="error-message"><%= request.getAttribute("errorMessage") %></p>
        <% } %>

        <form action="addUser" method="post">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" placeholder="Enter username" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Enter password" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Enter email" required>

            <label for="fullName">Full Name</label>
            <input type="text" id="fullName" name="fullName" placeholder="Enter full name" required>

            <input type="submit" value="Add User">
        </form>

        <a href="login.jsp" class="login-link">Already have an account? Login</a>
    </div>
</body>
</html>
