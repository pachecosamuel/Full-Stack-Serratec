// Display Mobile Menu
const navbar = document.querySelector('.navbar-unique');
const menu = document.querySelector('#mobile-menu')
const menuLinks = document.querySelector('.navbar-menu')

const mobileMenu = () => {
    menu.classList.toggle('is-active');
    menuLinks.classList.toggle('active');
    navbar.classList.toggle('active');
}

menu.addEventListener('click', mobileMenu);

// Scroll Effect Navbar

const navbarScroll = () => {
    navbar.classList.toggle("sticky", window.scrollY > 0);
    menuLinks.classList.toggle("sticky", window.scrollY > 0);
}

window.addEventListener('scroll', navbarScroll);

// Scroll Hide Navbar

const nav = document.querySelector('nav');
const navHeight = document.querySelector('nav').offsetHeight;

let lastScroll = 0;

const navbarScrollShowHide = () => {
    let currentScroll = window.pageYOffset;
    if (currentScroll - lastScroll > 0) {
        nav.classList.add("scroll-down");
        nav.classList.remove("scroll-up");
    }
    else {
        nav.classList.add("scroll-up");
        nav.classList.remove("scroll-down");
    }

    lastScroll = currentScroll;
}
window.addEventListener('scroll', navbarScrollShowHide);