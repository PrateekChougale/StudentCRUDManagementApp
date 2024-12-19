<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.tap.model.Student"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student List</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, yellow, red);
        color: #fff;
        margin: 0;
        padding: 20px;
    }

    h1 {
        text-align: center;
        color: #fff;
        margin-bottom: 30px;
    }

    .add-student-btn {
        text-align: center;
        margin-bottom: 20px;
    }

    .add-student-btn a {
        background-color: #27ae60;
        color: white;
        text-decoration: none;
        padding: 10px 20px;
        font-size: 16px;
        border-radius: 5px;
        display: inline-block;
        transition: background-color 0.3s ease;
    }

    .add-student-btn a:hover {
        background-color: #1e8449;
    }

    .container {
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
        justify-content: center;
    }

    .card {
        background-color: white;
        border: 1px solid #ddd;
        border-radius: 10px;
        padding: 20px;
        width: 250px;
        text-align: center;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .card h3 {
        margin: 10px 0;
        font-size: 20px;
        color: #2c3e50;
    }

    .card p {
        font-size: 16px;
        color: #000000; 
        margin: 5px 0;
    }

    .card button {
        background-color: #3498db;
        color: white;
        border: none;
        padding: 10px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 14px;
        border-radius: 4px;
        cursor: pointer;
        margin-top: 10px;
    }

    .card button:hover {
        background-color: #2980b9;
    }

    .card:hover {
        transform: scale(1.1); 
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
    }

    @media (max-width: 768px) {
        .container {
            grid-template-columns: repeat(2, 1fr);
        }
    }

    @media (max-width: 480px) {
        .container {
            grid-template-columns: 1fr;
        }
    }
</style>
</head>
<body>

<h1>Student List</h1>
<div class="add-student-btn">
    <a href="AddStudent.jsp">Add Student</a>
</div>
<div class="container">
    <%
    ArrayList<Student> sList = (ArrayList<Student>) session.getAttribute("studentList");
    for (Student stu : sList) {
    %>
    <div class="card">
        <h3><%= stu.getName() %></h3>
        <p>ID: <%= stu.getId() %></p>
        <p>Email: <%= stu.getEmail() %></p>
        <p>Phone: <%= stu.getPhone() %></p>
        <p>City: <%= stu.getCity() %></p>
        <a href="FetchOne?sid=<%= stu.getId()%>"><button>Edit</button></a>
        <a href="DeleteOne?studentId=<%= stu.getId()%>"><button>Delete</button></a>
    </div>
    <% } %>
</div>

</body>
</html>
