<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: linear-gradient(to right, yellow, red);
        color: white;
        margin: 0;
        padding: 20px;
    }

    h1 {
        text-align: center;
        margin-bottom: 30px;
        color: #fff;
    }

    .form-container {
        background-color: #fff;
        color: #000;
        max-width: 400px;
        margin: 50px auto;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
    }

    .form-container label {
        display: block;
        font-size: 16px;
        font-weight: bold;
        margin-bottom: 8px;
    }

    .form-container input[type="text"],
    .form-container input[type="email"],
    .form-container input[type="tel"],
    .form-container input[type="submit"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 14px;
    }

    .form-container input[type="submit"] {
        background-color: #27ae60;
        color: white;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        border: none;
    }

    .form-container input[type="submit"]:hover {
        background-color: #1e8449;
    }

    .form-container input[type="text"]:focus,
    .form-container input[type="email"]:focus,
    .form-container input[type="tel"]:focus {
        outline: none;
        border-color: #3498db;
        box-shadow: 0 0 5px rgba(52, 152, 219, 0.5);
    }
</style>
</head>
<body>

<h1>Add Student</h1>
<div class="form-container">
    <form action="StudentAdd">
        <label for="name">Name</label>
        <input type="text" id="name" name="name" placeholder="Enter student's name" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" placeholder="Enter student's email" required>

        <label for="phone">Phone</label>
        <input type="tel" id="phone" name="phone" placeholder="Enter student's phone number" required>

        <label for="city">City</label>
        <input type="text" id="city" name="city" placeholder="Enter student's city" required>

        <input type="submit" value="Add Student">
    </form>
</div>

</body>
</html>
