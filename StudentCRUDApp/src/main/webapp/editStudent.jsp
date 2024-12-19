<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.tap.model.Student" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit</title>
<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, yellow, red);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        overflow: hidden;
    }

    .form-container {
        background: rgba(255, 255, 255, 0.8);
        border: 1px solid rgba(255, 255, 255, 0.5);
        border-radius: 10px;
        box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
        backdrop-filter: blur(8px);
        padding: 20px 30px;
        width: 400px;
    }

    h2 {
        text-align: center;
        color: black;
        margin-bottom: 20px;
    }

    .form-group {
        display: flex;
        align-items: center;
        justify-content: space-between;
        margin-bottom: 15px;
    }

    label {
        flex: 1;
        color: black;
        font-size: 16px;
    }

    input[type="text"],
    input[type="email"],
    input[type="tel"] {
        flex: 2;
        padding: 8px;
        font-size: 14px;
        border: 1px solid rgba(0, 0, 0, 0.5);
        border-radius: 5px;
        outline: none;
        background: rgba(255, 255, 255, 0.6);
        color: black;
    }

    input[type="text"]:focus,
    input[type="email"]:focus,
    input[type="tel"]:focus {
        border-color: #7f7fff;
        box-shadow: 0 0 5px rgba(127, 127, 255, 0.5);
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        font-size: 16px;
        font-weight: bold;
        color: white;
        background-color: rgba(40, 167, 69, 0.8);
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: rgba(33, 136, 56, 0.8);
    }
</style>
</head>
<body>
<% Student student = (Student) session.getAttribute("student"); %>
    <div class="form-container">
        <h2>Edit Information</h2>
        <form action="UpdateStudent" method="post">
            <div class="form-group">
                <label for="id">ID</label>
                <input type="text" id="id" name="id" placeholder="Enter your ID" value="<%= student.getId() %>" readonly>
            </div>
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" placeholder="Enter your name" value="<%= student.getName() %>">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" value="<%= student.getEmail() %>" readonly>
            </div>
            <div class="form-group">
                <label for="phone">Phone</label>
                <input type="tel" id="phone" name="phone" placeholder="Enter your phone number" value="<%= student.getPhone() %>">
            </div>
            <div class="form-group">
                <label for="city">City</label>
                <input type="text" id="city" name="city" placeholder="Enter your city" value="<%= student.getCity() %>">
            </div>
            <input type="submit" value="Update">
        </form>
    </div>
</body>
</html>
