<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title align="center">Student Projects and Portfolio Management System</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            background-color: #f4f4f4;
            color: #333;
        }

        h2, h3 {
            color: #4CAF50;
            margin: 20px 0;
        }

        .navbar {
            overflow: hidden;
            background-color: #4CAF50;
            padding: 10px 0;
        }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .navbar a:hover {
            background-color: #45a049;
        }

        .dropdown {
            float: left;
            overflow: hidden;
        }

        .dropdown .dropbtn {
            cursor: pointer;
            padding: 14px 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            outline: none;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        #admin, #student {
            margin: 20px;
            padding: 15px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        ul {
            list-style-type: none;
        }
    </style>
</head>
<body>
    <h2 align="center">Student Projects and Portfolio Management System</h2>
    <div class="navbar" align="center">
        <a href="home.jsp">Home</a>
        <div class="dropdown">
            <a class="dropbtn">Login</a>
            <div class="dropdown-content">
                <a href="adminlogin.jsp">Admin Login</a>
                <a href="studentlogin.jsp">Student Login</a>
            </div>
        </div>
        <a href="about.jsp">About</a>
        <a href="contact.jsp">Contact</a>
      <div class="dropdown">
        <a class="dropbtn">Admin Home</a>
        <div class="dropdown-content">
        <a href="addstudents.jsp">Add Students</a>
        <a href="viewstudentportfolios.jsp">View Student Portfolios</a>
        <a href="viewstudentprojects.jsp">View Student Projects</a>
        <a href="providefeedback.jsp">Provide Feedback</a>
        <a href="setduedate.jsp">Set Due Date</a>
        </div>
        </div>
        <div class="dropdown">
        <a class="dropbtn">Student Home</a>
        <div class="dropdown-content">
        <a href="uploadprojects.jsp">Upload Projects</a>
        <a href="manageportfolios.jsp">Manage Portfolios</a>
        <a href="viewadminfeedback.jsp">View Admin Feedback</a>
        </div>
        </div>
    </div>

    <div id="admin">
        <h3>Admin Section</h3>
        <ul>
        <li><strong>Add Student:</strong> Students can be added.</li>
            <li><strong>View Student Portfolios:</strong> Access all student portfolios for review.</li>
            <li><strong>View Student Projects:</strong> Review submitted projects with filtering options.</li>
            <li><strong>Provide Feedback:</strong> Leave detailed feedback on student projects.</li>
            <li><strong>Set Due Dates:</strong> Establish submission deadlines for projects.</li>
        </ul>
    </div>

    <div id="student">
        <h3>Student Section</h3>
        <ul>
            <li><strong>Upload Projects:</strong> Upload projects by specified due dates.</li>
            <li><strong>Manage Portfolios:</strong> Create and update personal portfolios.</li>
            <li><strong>View Admin Feedback:</strong> Access feedback provided by the admin.</li>
        </ul>
    </div>
</body>
</html>
