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



//Slider //
document.addEventListener('DOMContentLoaded', function() {
    const slides = document.querySelectorAll('.slide');
    let index = 0;

    function showSlide() {
        slides.forEach((slide) => {
            slide.classList.remove('active');
        });
        slides[index].classList.add('active');
    }

    function nextSlide() {
        index = (index + 1) % slides.length;
        showSlide();
    }

    function prevSlide() {
        index = (index - 1 + slides.length) % slides.length;
        showSlide();
    }

    // Show first slide initially
    showSlide();

    // Automatically switch to next slide every 5 seconds
    setInterval(nextSlide, 5000);
});
