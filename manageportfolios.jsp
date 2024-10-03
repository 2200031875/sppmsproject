<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Portfolio</title>
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
        .portfolio-form {
            margin-bottom: 20px;
        }
        input[type="text"], textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
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
        .action-buttons a {
            padding: 8px 12px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            margin-right: 5px;
        }
        .action-buttons a.delete {
            background-color: #f44336;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Manage Portfolios</h2>

    <!-- Add New Portfolio Form -->
    <div class="portfolio-form">
        <form action="addPortfolio" method="post">
            <label for="portfolioName">Portfolio Name:</label>
            <input type="text" id="portfolioName" name="portfolioName" required>
            
            <label for="portfolioDescription">Description:</label>
            <textarea id="portfolioDescription" name="portfolioDescription" rows="4" required></textarea>
            
            <input type="submit" value="Add Portfolio">
        </form>
    </div>
    <!-- List of Portfolios -->
    <h3>Your Portfolios</h3>
    <c:choose>
        <c:when test="${not empty portfolioList}">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Portfolio Name</th>
                        <th>Description</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Loop through each portfolio -->
                    <c:forEach var="portfolio" items="${portfolioList}">
                        <tr>
                            <td>${portfolio.id}</td>
                            <td>${portfolio.name}</td>
                            <td>${portfolio.description}</td>
                            <td class="action-buttons">
                                <a href="editPortfolio?id=${portfolio.id}">Edit</a>
                                <a href="deletePortfolio?id=${portfolio.id}" class="delete" 
                                   onclick="return confirm('Are you sure you want to delete this portfolio?');">Delete</a>
                                <a href="viewPortfolioDetails?id=${portfolio.id}">View</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:when>
        <c:otherwise>
            <p>No portfolios found. Please add a new portfolio.</p>
        </c:otherwise>
    </c:choose>
</div>
<p align="center"><a href="index.jsp">Back to Home</a></p>
</body>
</html>