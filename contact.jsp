<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Us - Student Projects and Portfolio Management System</title>
    <style>
        /* General Reset */
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
            text-align: center; /* Center text alignment */
            padding: 20px; /* Add padding to body */
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

        .content-box {
            display: inline-block; /* Center the box */
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            padding: 20px;
            margin: 20px auto;
            width: 300px; /* Set width for the box */
        }

        p a {
            color: #4CAF50;
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

    <h3>Contact Us</h3>
    <div class="content-box">
        <p>If you need assistance or have any questions about our platform, we're here to help. Please feel free to reach out to us using the contact information below:</p>
        <p><strong>Email:</strong> *****@gmail.com</p>
        <p><strong>Phone:</strong> 9*5*6*9*5*</p>
        <p>Our support team is available during regular business hours to assist you. Thank you for choosing our platform. We look forward to helping you succeed in your academic journey.</p>
    </div>

    <p><a href="index.jsp">Back to Home</a></p>
</body>
</html>
