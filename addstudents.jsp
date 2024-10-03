<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Student</title>
    <style>
        /* Simple form styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            padding: 20px;
        }

        .form-container {
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h2 {
            text-align: center;
            color: #4CAF50;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        .message {
            text-align: center;
            color: red;
            margin-bottom: 15px;
        }

        .success {
            color: green;
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h2>Add Student</h2>

        <!-- Message block for success or error messages -->
        <div class="message">
            <% 
                String message = (String) request.getAttribute("message");
                if (message != null) {
                    out.print(message);
                }
            %>
        </div>

        <!-- Form for adding a student -->
        <form action="AddStudentServlet" method="post">
            <div class="form-group">
                <label for="studentName">Student Name:</label>
                <input type="text" id="studentName" name="studentName" required>
            </div>

            <div class="form-group">
                <label for="studentEmail">Student Email:</label>
                <input type="email" id="studentEmail" name="studentEmail" required>
            </div>

            <div class="form-group">
                <label for="studentPassword">Student Password:</label>
                <input type="password" id="studentPassword" name="studentPassword" required>
            </div>

            <div class="form-group">
                <label for="studentId">Student ID:</label>
                <input type="text" id="studentId" name="studentId" required>
            </div>

            <input type="submit" value="Add Student">
        </form>
    </div>
<p align="center"><a href="index.jsp">Back to Home</a></p>
</body>
</html>