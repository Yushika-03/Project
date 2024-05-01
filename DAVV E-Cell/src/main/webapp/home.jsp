<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.cell.DB.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="home.css">
    <title>E-Cell DAVV</title>
</head>
<body>

<header class="sticky">
    <div class="logo-container">
        <img id="img" src="Image/logo_b .jpg" alt="Logo">
    </div>
    <button class="nav-toggle">
        <span></span>
        <span></span>
        <span></span>
    </button>
    <nav class="navbar">
        <ul class="nav-links">
            <li><a class="active" href="home.jsp">HOME</a></li>
            <li><a href="event1.html">EVENTS</a></li>
            <li><a href="#college-container">DAVV COLLEGES</a></li>
            <li><a href="#cards-section">INITIATIVE</a></li>
            <li><a href="team.html">TEAM</a></li>
            <li><a href="#">COLLABORATION</a></li>
            <li><button class="join-btn" ><a href="join.html">JOIN US!</a></button></li>
        </ul>
    </nav>
</header>

<!-- background content -->
<div class="bgImage">
  
    <div class="content">
        
        <h1>Welcome <span>DAVV</span></h1>
      <center> <p>E-Cell (Entrepreneurship Cell) at Devi Ahilya Vishwavidyalaya (DAVV) in Indore. E-Cell is typically an organization within a university that promotes and supports entrepreneurship among students. These cells often organize events, workshops, and competitions to foster an entrepreneurial spirit and provide resources for aspiring student entrepreneurs. </p></center> 
        <button class="join-btn" onclick="scrollToAboutSection()"></a>More</button>


 

 
 <!--Popup Box start-->
<div id="popup" class="popup" >
  <div class="popupcontent" id="popupcontent">
      <span class="close-btn" onclick="closePopup()">&times;</span>
      <h2>Notice</h2>
      <div class="popupbody" id="popupbody">
        <marquee height="100%" width="100%" onmouseover="this.stop()" onmouseleave="this.start()" scrollamount="7"
          direction="up">
          <table border="1">
            <tr>
              <th>7 march</th>
              <td> 
                <a href="BCA_VI SEMESTER_COMPUTER_23_24.pdf" target=”_blank”>BCA 6th sem syllabu</a>
              </td>
            </tr>
            <tr>
              <th>7 march</th>
              <td> 
                <a href="BCA_VI SEMESTER_COMPUTER_23_24.pdf" target=”_blank”>BCA 6th sem syllabu</a>
              </td>
            </tr>
            <tr>
              <th>7 march</th>
              <td> 
                <a href="BCA_VI SEMESTER_COMPUTER_23_24.pdf" target=”_blank”>BCA 6th sem syllabu</a>
              </td>
            </tr>
            <tr>
              <th>7 march</th>
              <td> 
                <a href="BCA_VI SEMESTER_COMPUTER_23_24.pdf" target=”_blank”>BCA 6th sem syllabu</a>
              </td>
            </tr>
            <tr>
              <th>7 march</th>
              <td> 
                <a href="BCA_VI SEMESTER_COMPUTER_23_24.pdf" target=”_blank”>BCA 6th sem syllabu</a>
              </td>
            </tr>
            
            </table>
        </marquee>



<!--view all -->
          </div>
  </div>
  <div class="all-notice"><a href="#" onclick="openFullscreenPopup()">View All</a></div>

</div> 





  <!-- HTML for Fullscreen Popup -->
  <div id="fullscreen-popup" class="fullscreen-popup">
    <div class="fullscreen-popup-content">
        <span class="close-btn" onclick="closeFullscreenPopup()">&times;</span>
        <h2>Notice</h2>
        <div class="popupbody" id="popupbody">
                <table border="1">
                  <tr>
                    <th style="color: black;">7 march</th>
                    <td> 
                      <a href="BCA_VI SEMESTER_COMPUTER_23_24.pdf" target=”_blank”>BCA 6th sem syllabu</a>
                    </td>
                  </tr>
                  <tr>
                    <th style="color: black;">7 march</th>
                    <td> 
                      <a href="BCA_VI SEMESTER_COMPUTER_23_24.pdf" target=”_blank”>BCA 6th sem syllabu</a>
                    </td>
                  </tr>
                  <tr>
                    <th style="color: black;">7 march</th>
                    <td> 
                      <a href="BCA_VI SEMESTER_COMPUTER_23_24.pdf" target=”_blank”>BCA 6th sem syllabu</a>
                    </td>
                  </tr>
                  <tr>
                    <th style="color: black;">7 march</th>
                    <td> 
                      <a href="BCA_VI SEMESTER_COMPUTER_23_24.pdf" target=”_blank”>BCA 6th sem syllabu</a>
                    </td>
                  </tr>
                  <tr>
                    <th style="color: black;">7 march</th>
                    <td> 
                      <a href="BCA_VI SEMESTER_COMPUTER_23_24.pdf" target=”_blank”>BCA 6th sem syllabu</a>
                    </td>
                  </tr>
                  <tr>
                    <th style="color: black;">7 march</th>
                    <td> 
                      <a href="BCA_VI SEMESTER_COMPUTER_23_24.pdf" target=”_blank”>BCA 6th sem syllabu</a>
                    </td>
                  </tr>
                  <tr>
                    <th style="color: black;">7 march</th>
                    <td> 
                      <a href="BCA_VI SEMESTER_COMPUTER_23_24.pdf" target=”_blank”>BCA 6th sem syllabu</a>
                    </td>
                  </tr>
                  <tr>
                    <th style="color: black;">7 march</th>
                    <td> 
                      <a href="BCA_VI SEMESTER_COMPUTER_23_24.pdf" target=”_blank”>BCA 6th sem syllabu</a>
                    </td>
                  </tr>
                  <tr>
                    <th style="color: black;">7 march</th>
                    <td> 
                      <a href="BCA_VI SEMESTER_COMPUTER_23_24.pdf" target=”_blank”>BCA 6th sem syllabu</a>
                    </td>
                  </tr>
                  <tr>
                    <th style="color: black;">7 march</th>
                    <td> 
                      <a href="BCA_VI SEMESTER_COMPUTER_23_24.pdf" target=”_blank”>BCA 6th sem syllabu</a>
                    </td>
                  </tr>
                </table>
          
        </div>
    </div>
  </div>
  
 <!-- popup end-->



<!-------welcome end section--------->
    </div>
</div>


<!-------Intro section--------->

<div class="ecell-description">
    <h2>E-cell</h2>
    <p>E-Cell DAVV" likely refers to the Entrepreneurship Cell at Devi Ahilya Vishwavidyalaya (DAVV), which is a university in India. E-Cell DAVV is likely a student-run organization aimed at fostering entrepreneurship among the students. Its activities may include organizing workshops, seminars, startup competitions, and networking events to provide students with resources, guidance, and mentorship to pursue entrepreneurial ventures. It may also offer support in terms of idea incubation, funding opportunities, and industry connections.</p>
</div>


<!-- Heading for the cards -->
<h2 id="cards-section" class="heading">OUR ROADMAP</h2>

<!-- Cards Section -->
<div  class="cards-section">
    <div class="card">
        <h2>Vision</h2>
        <p>Description of Card 1</p>
    </div>
    <div class="card">
        <h2>Moto</h2>
        <p>Description of Card 2</p>
    </div>
</div>


<!-- New div for the background image -->
<!-- <div class="bgOverlay"></div> -->




<!-- About Us Section -->
<div id="about-section" class="about-us-section">
    <h2>About Us</h2>
    <p>The Entrepreneurship Cell (E-Cell) at DAVV is a dynamic community of aspiring entrepreneurs, innovators, and change-makers dedicated to fostering entrepreneurial spirit and nurturing startup ventures. Our mission is to inspire, educate, and empower students and alumni to pursue their entrepreneurial dreams through various initiatives, workshops, networking events, and mentorship programs. With a focus on fostering creativity, resilience, and collaboration, we aim to contribute to the growth and success of the startup ecosystem both locally and globally. Join us in shaping the future of entrepreneurship at DAVV!</p>
    <!-- Add more content as needed -->
</div>


<!---------------college slider ----------->
<div id="college-container" class="college-container">
    <center> <h1>DAVV COLLEGES</h1></center>
  <div class="slider-container">
    <div class="slider">
        <div class="slide">
            <img src="Image/4.jpeg" alt="Image 1">
        </div>
        <div class="slide">
            <img src="Image/6.jpeg" alt="Image 2">
        </div>
        <div class="slide">
            <img src="Image/4.jpeg" alt="Image 3">
        </div>
      </div>
     </div>
 
<!---------------college search bar ----------->
      <div class="college-box2">
        <div class="search-bar">
             <input type="text" id="searchInput" onkeyup="searchTable()" placeholder="Search for colleges..">
            <button type="submit" value="search" onclick="search()" ><i class="fa fa-search"></i></button>
        </div>


      <div class="table-active">
            <table id="collegeTable" border="4" width="100%">
                <tr align="centre">
                    <th>College Name</th>
                    <th style="width: 100px;">Action</th>
                </tr>
                 <%-- Populate table with all data from the database --%>
        <%
            // Your database connection code
try {
        // Execute SQL query to fetch all data
        Connection con = DBConnection.getConn();
        PreparedStatement stmt = con.prepareStatement("SELECT * FROM college");
        ResultSet rs = stmt.executeQuery();

        // Iterate through result set and populate table rows
        while (rs.next()) {
            out.println("<tr>");
            out.println("<td>" + rs.getString("college_name") + "</td>");
            out.println("<td><button class='open-button' onclick='openCollegePage(\"" + rs.getString("college_name") + "\")'>Open</button></td>");
            out.println("</tr>");
        }

        // Close resources
        rs.close();
        stmt.close();


        con.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    %>
    </table>

    <script>
    
    
    function searchTable() {
        var input, filter, table, tr, td, i, txtValue;
        input = document.getElementById("searchInput");
        filter = input.value.toUpperCase();
        table = document.getElementById("collegeTable");
        tr = table.getElementsByTagName("tr");
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[0]; // Search only on the first column (First Name)
            if (td) {
                txtValue = td.textContent || td.innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }
    // Mapping of college names to HTML file names
    var collegePageMapping = {
        "Government Holkar (Model, Autonomous) Science College, Indore (M.P.)": "holkar",
        "Institute of Management Studies - [IMS]": "Ims",
        "International Institute of Professional Studies - [IIPS]": "iips",
        "Institute of Engineering & Technology - [IET]": "thanks"
        // Add more mappings as needed
    };

    function openCollegePage(collegeName) {
        // Get the HTML file name corresponding to the college name
        var fileName = collegePageMapping[collegeName];
        if (fileName) {
            // Redirect to the HTML page of the selected college
            window.location.href = fileName + ".html";
        } else {
            // Handle the case if the mapping is not found
            alert("HTML page not found for the selected college.");
        }
    }
</script>

      </div>


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
                <li><a href="home.html">HOME</a></li>
                <li><a href="event1.html">EVENTS</a></li>
                <li><a href="#college-container">DAVV COLLEGES </a></li>
                <li><a href="#cards-section">INITIATIVE</a></li>
                <li><a href="team.html">TEAM</a></li>
                <li><a href="">COLLABORATION</a></li>
            </ul>
            </h3>
        </div>
    </div>
    <p>&copy; 2024 Your Website. All Rights Reserved.</p>
</div>




<script src="home.js"></script>
</div>
</body>
</html>
