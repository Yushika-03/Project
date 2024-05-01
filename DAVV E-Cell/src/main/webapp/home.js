//navbar
document.addEventListener('DOMContentLoaded', function() {
    const navToggle = document.querySelector('.nav-toggle');
    const navLinks = document.querySelector('.nav-links');

    navToggle.addEventListener('click', function() {
        navLinks.classList.toggle('active');
    });
});

window.addEventListener("scroll", function(){
    var header = this.document.querySelector("header");
    header.classList.toggle("sticky", this.window.scrollY>0);
    
});

//college slider
const slider = document.querySelector('.slider');
const slides = document.querySelectorAll('.slide');

let slideIndex = 0;

function showSlide(index) {
    slider.style.transform = `translateX(-${index * 100}%)`;
}

function nextSlide() {
    slideIndex++;
    if (slideIndex >= slides.length) {
        slideIndex = 0;
    }
    showSlide(slideIndex);
}

// Auto slide every 5 seconds
setInterval(nextSlide, 5000);

// Smooth scrolling for anchor links
// Smooth scrolling for anchor links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function(e) {
        e.preventDefault();

        document.querySelector(this.getAttribute('href')).scrollIntoView({
            behavior: 'smooth'
        });
    });
});


// about section scroll

function scrollToAboutSection() {
    var aboutSection = document.getElementById("about-section");
    aboutSection.style.display = "block"; // Show the About Us section if hidden
    
    // Smooth scroll to the About Us section
    aboutSection.scrollIntoView({ behavior: "smooth" });

      // Wait for scrolling animation to finish before triggering the animation
    setTimeout(function() {
        // Trigger the animation for all elements within the About Us section
        var aboutElements = aboutSection.querySelectorAll('h2, p, img');
        aboutElements.forEach(function(element, index) {
            element.style.opacity = '0'; // Initially hide the element
            element.style.animation = 'fadeIn 1s forwards'; // Apply fade-in animation
            element.style.animationDelay = (index + 1) * 0.5 + 's'; // Delay for each element
        });
    }, 1000); // Adjust the delay to match the duration of the scrolling animation
}
//about section end




//  popup for notice section
//Function to open the popup
function openPopup() {
    var popup = document.getElementById('popup');
    popup.style.display = 'block';
}

// Function to close the popup
function closePopup() {
    var popup = document.getElementById('popup');
    popup.style.display = 'none';
}

// Test to see if the functions are being called
console.log("JavaScript loaded."); // Check if JavaScript is loaded
openPopup(); // Test opening the popup on page load


 // Function to open the fullscreen popup when clicking on "View All" link
 function openFullscreenPopup() {
    // Close any existing popups
    closeAllPopups();

    // Open the new fullscreen popup
    var fullscreenPopup = document.getElementById('fullscreen-popup');
    fullscreenPopup.style.display = 'block';
}

// Function to close the fullscreen popup
function closeFullscreenPopup() {
    var fullscreenPopup = document.getElementById('fullscreen-popup');
    fullscreenPopup.style.display = 'none';
}

// Function to close all popups
function closeAllPopups() {
    var allPopups = document.querySelectorAll('.fullscreen-popup');
    allPopups.forEach(function(popup) {
        popup.style.display = 'none';
    });
}


