<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Projects and Portfolio Management System</title>
    <style>
        /* Global Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
        }

        h2, h3 {
            color: #4CAF50;
            margin: 20px 0;
            text-align: center;
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

        .container {
            max-width: 1100px;
            margin: 20px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .card {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin: 20px 0;
            transition: box-shadow 0.3s ease;
        }

        .card:hover {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
        }

        .card h3 {
            margin-bottom: 15px;
        }

        .card p, .card ul {
            line-height: 1.6;
        }

        ul {
            list-style-type: disc;
            margin-left: 20px;
        }

        p a {
            color: #4CAF50;
            text-decoration: none;
        }

        p a:hover {
            text-decoration: underline;
        }

        .footer {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
        }

    </style>
</head>
<body>

    <h2>Student Projects and Portfolio Management System</h2>
    
    <div class="navbar">
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

    <div class="container">
        <!-- About Section -->
        <div class="card">
            <h3>About</h3>
            <p>The Student Projects and Portfolio Management System is designed to help students showcase their projects and manage their portfolios efficiently. This system provides a platform for students to upload, organize, and present their work in a user-friendly manner.</p>
        </div>

        <!-- Features Section -->
        <div class="card">
            <h3>Features</h3>
            <ul>
                <li>User-friendly interface for project submissions.</li>
                <li>Portfolio management tools to organize projects.</li>
                <li>Feedback and rating system from peers and instructors.</li>
                <li>Secure login for students and administrators.</li>
            </ul>
        </div>

        <!-- Purpose Section -->
        <div class="card">
            <h3>Purpose</h3>
            <p>This system aims to enhance the visibility of student work and provide a centralized platform for managing academic projects. By facilitating easier access to portfolios, we hope to encourage collaboration and feedback among students.</p>
        </div>

    </div>

    <div class="footer">
        <p><a href="index.jsp">Back to Home</a></p>
    </div>

</body>
</html>