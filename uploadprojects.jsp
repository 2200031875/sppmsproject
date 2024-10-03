<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Upload Project</title>
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
        input[type="text"], textarea, input[type="file"], input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            box-sizing: border-box;
        }
        textarea {
            resize: vertical;
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
        <h2>Upload Project</h2>

        <!-- Form for uploading project details and files -->
        <form action="uploadProject" method="POST" enctype="multipart/form-data">
            <label for="projectTitle">Project Title:</label>
            <input type="text" id="projectTitle" name="projectTitle" placeholder="Enter project title" required>

            <label for="projectDescription">Project Description:</label>
            <textarea id="projectDescription" name="projectDescription" rows="4" placeholder="Enter project description" required></textarea>

            <label for="projectFile">Upload Project File:</label>
            <input type="file" id="projectFile" name="projectFile" accept=".pdf,.doc,.docx,.zip,.rar,.jpg,.png" required>

            <input type="submit" value="Upload Project">
        </form>
    </div>
<p align="center"><a href="index.jsp">Back to Home</a></p>
</body>
</html>