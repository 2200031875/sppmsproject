<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Set Due Date</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h2 {
            text-align: center;
        }
        label {
            display: block;
            margin-top: 20px;
        }
        input[type="text"], input[type="date"], input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 4px;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Set Due Date</h2>

        <form action="setDueDate" method="POST">
            <label for="taskId">Task ID:</label>
            <input type="text" id="taskId" name="taskId" value="${taskId}" readonly>

            <label for="taskName">Task Name:</label>
            <input type="text" id="taskName" name="taskName" value="${taskName}" readonly>

            <label for="dueDate">Set Due Date:</label>
            <input type="date" id="dueDate" name="dueDate" required>

            <input type="submit" value="Set Due Date">
        </form>
        <p><a href="index.jsp">Back to Home</a></p>
    </div>

</body>
</html>