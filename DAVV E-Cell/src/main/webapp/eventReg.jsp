<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="reg.css">
</head>
<body>

    <!-- header -->

    <header class="sticky">
        <div class="logo-container">
            <img id="img" src="Image\logo_b .jpg" alt="Logo">
        </div>
        <button class="nav-toggle">
            <span></span>
            <span></span>
            <span></span>
        </button>
        <nav class="navbar">
            <ul class="nav-links">
                <li><a class="active" href="home.html">HOME</a></li>
                <li><a href="event1.html">EVENTS</a></li>
                <li><a href="#">INITIATIVE</a></li>
                <li><a href="team.html">TEAM</a></li>
                <li><a href="#">COLLABORATION</a></li>
                <li><button class="join-btn" ><a href="join.jsp">JOIN US!</a></button></li>
            </ul>
        </nav>
    </header>
    

    <!-- form -->
    <div class="registration-container">
        <div class="registration-form">
            <h2>Event Registration Form</h2>
            <form action="EventReg" method="get">
                 <div class="input-group">
                    <label for="enroll">Enrollment No.:</label>
                    <input type="text" id="enroll" name="enroll" required>
                </div>
                <div class="input-group">
                    <label for="first_name">First Name:</label>
                    <input type="text" id="first_name" name="first_name" required>
                </div>
                <div class="input-group">
                    <label for="first_name">Last Name:</label>
                    <input type="text" id="last_name" name="last_name" required>
                </div>
                <div class="input-group">
                    <label for="add">Address:</label>
                    <input type="text" id="add" name="add" required>
                </div>
                 <div class="input-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="input-group">
                    <label for="mobile_no">Mobile No:</label>
                    <input type="text" id="mobile_no" name="mobile_no" required>
                </div>
                <div class="input-group">
                    <label for="college">College Name:</label>
                    <input type="text" id="college" name="college" required>
                </div>
                
                <button type="submit">Submit</button>
            </form>
        </div>
    </div>

    <!-- footer -->
    
<div class="footer">
    <div class="footer-content">
    <div class="row">
        <div class="col-1">
            <h3 style="margin-top:10px; line-height: 40px;"> Address</h3>
            <!-- <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3681.0420600480343!2d75.86811427406339!3d22.689478128678836!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3962fce9f5468483%3A0xe7e3847b56770c91!2sInstitute%20of%20Management%20Studies!5e0!3m2!1sen!2sin!4v1710149481135!5m2!1sen!2sin" width="200" height="200" style="border: 20px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe> -->
        </div>
        <div class="col-2">
            <h3 style="margin-top: 10px; line-height: 40px;">Links</h3>
            <ul>
                <li><a href="home.jsp">HOME</a></li>
                <li><a href="event1.html">EVENTS</a></li>
                <li><a href="#">INITIATIVE</a></li>
                <li><a href="team.html">TEAM</a></li>
                <li><a href="#">COLLABORATION</a></li>
            </ul>
           </div>
        </div>
    </div>
        <p>&copy; 2024 Your Website. All Rights Reserved.</p>
    </div>
    <script src="event1.js"></script>
</body>
</html>