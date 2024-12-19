<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Failure</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: red;
        color: white;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .failure-card {
        background-color: #ffcccc;
        color: #a94442;
        border: 1px solid #a94442;
        border-radius: 10px;
        padding: 40px;
        text-align: center;
        max-width: 500px;
        width: 90%;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        font-size: 20px;
    }

    .failure-card h1 {
        font-size: 36px;
        margin-bottom: 20px;
    }

    .failure-card p {
        font-size: 18px;
        margin-bottom: 20px;
    }

    .failure-card a {
        display: inline-block;
        background-color: #d9534f;
        color: white;
        text-decoration: none;
        padding: 10px 20px;
        border-radius: 5px;
        font-size: 16px;
        transition: background-color 0.3s ease;
    }

    .failure-card a:hover {
        background-color: #c9302c;
    }
</style>
</head>
<body>
    <div class="failure-card">
        <h1>Data Insertion Failed</h1>
        <p>We encountered an issue while trying to insert your data. Please try again later.</p>
        <a href="home.jsp">Go Back</a>
    </div>
</body>
</html>
