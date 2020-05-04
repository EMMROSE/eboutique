const scrolledNav = () => {
  const navbar = document.querySelector('#js-scroll-navbar');
  const navbarItems = document.querySelector('#navbarSupportedContent');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 380) {
        navbar.classList.remove('bg-transparent');
      } else {
        navbar.classList.add('bg-transparent');
        navbarItems.classList.add('d-none');
      }
    });
  }
}

export { scrolledNav }
