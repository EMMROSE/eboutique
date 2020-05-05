const scrolledNav = () => {
  const navbar = document.querySelector('#js-scroll-navbar');
  const navbarItems = document.querySelector('#navbarSupportedContent');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 210) {
        navbar.classList.remove('bg-transparent');
        navbar.classList.add('navbar-style');
        navbarItems.classList.remove('d-none');
      } else {
        navbar.classList.add('bg-transparent');
        navbar.classList.remove('navbar-style');
        navbarItems.classList.add('d-none');
      }
    });
  }
}

export { scrolledNav }
