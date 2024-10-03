<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Student Portfolios</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .btn {
            padding: 5px 10px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
        .btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <h2 align="center">Student Portfolios</h2>

    <table>
        <thead>
            <tr>
                <th>Student ID</th>
                <th>Student Name</th>
                <th>Project Title</th>
                <th>Description</th>
                <th>Submission Date</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
           
            <c:forEach var="portfolio" items="${portfolios}">
                <tr>
                    <td>${portfolio.studentId}</td>
                    <td>${portfolio.studentName}</td>
                    <td>${portfolio.projectTitle}</td>
                    <td>${portfolio.description}</td>
                    <td>${portfolio.submissionDate}</td>
                    <td>
                        
                        <a class="btn" href="viewPortfolioDetails?studentId=${portfolio.studentId}">View Details</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
<p><a href="index.jsp">Back to Home</a></p>
</body>
</html>