/**
 * Ahmed Sherif | Data Analyst Portfolio
 * Smooth Scrolling, ScrollSpy & Theme Toggle
 */

document.addEventListener('DOMContentLoaded', () => {
  // ==========================================
  // 1. THEME SWITCHER (Dark / Light Mode)
  // ==========================================
  const themeToggle = document.getElementById('themeToggle');
  const htmlRoot = document.documentElement;

  const savedTheme = localStorage.getItem('as_portfolio_theme') || 
    (window.matchMedia('(prefers-color-scheme: light)').matches ? 'light' : 'dark');

  setTheme(savedTheme);

  if (themeToggle) {
    themeToggle.addEventListener('click', () => {
      const currentTheme = htmlRoot.getAttribute('data-theme') || 'dark';
      const newTheme = currentTheme === 'dark' ? 'light' : 'dark';
      setTheme(newTheme);
    });
  }

  function setTheme(theme) {
    htmlRoot.setAttribute('data-theme', theme);
    localStorage.setItem('as_portfolio_theme', theme);
  }

  // ==========================================
  // 2. MOBILE MENU TOGGLE
  // ==========================================
  const mobileToggle = document.getElementById('mobileMenuToggle');
  const navMenu = document.getElementById('navMenu');
  const navLinks = document.querySelectorAll('.nav-link');

  if (mobileToggle && navMenu) {
    mobileToggle.addEventListener('click', () => {
      navMenu.classList.toggle('open');
    });

    navLinks.forEach(link => {
      link.addEventListener('click', () => {
        navMenu.classList.remove('open');
      });
    });
  }

  // ==========================================
  // 3. SMOOTH SCROLLSPY (Highlight Active Link)
  // ==========================================
  const sections = document.querySelectorAll('section[id]');

  window.addEventListener('scroll', () => {
    const scrollY = window.pageYOffset;

    sections.forEach(section => {
      const sectionHeight = section.offsetHeight;
      const sectionTop = section.offsetTop - 110;
      const sectionId = section.getAttribute('id');
      const targetLink = document.querySelector(`.nav-link[href="#${sectionId}"]`);

      if (targetLink && scrollY >= sectionTop && scrollY < sectionTop + sectionHeight) {
        navLinks.forEach(l => l.classList.remove('active'));
        targetLink.classList.add('active');
      }
    });
  });
});
