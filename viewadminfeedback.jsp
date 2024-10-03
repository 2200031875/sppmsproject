<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Admin Feedback</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            border-radius: 8px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .no-feedback {
            text-align: center;
            font-size: 16px;
            color: #999;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Admin Feedback on Your Projects</h2>

    <!-- Feedback Table -->
    <c:choose>
        <c:when test="${not empty feedbackList}">
            <table>
                <thead>
                    <tr>
                        <th>Feedback ID</th>
                        <th>Project Title</th>
                        <th>Feedback</th>
                        <th>Date</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Loop over feedback entries -->
                    <c:forEach var="feedback" items="${feedbackList}">
                        <tr>
                            <td>${feedback.id}</td>
                            <td>${feedback.projectTitle}</td>
                            <td>${feedback.feedbackContent}</td>
                            <td>${feedback.date}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:when>
        <c:otherwise>
            <!-- Message if no feedback available -->
            <p class="no-feedback">No feedback has been provided by the admin yet.</p>
        </c:otherwise>
    </c:choose>
</div>
<p align="center"><a href="index.jsp">Back to Home</a></p>
</body>
</html>