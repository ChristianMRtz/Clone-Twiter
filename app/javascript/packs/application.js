// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
document.addEventListener('turbolinks:load', () => {

  //get flash message element
  const flashMessage = document.querySelector('.flash-card');

  //Fade out (gradually transparent,Define a function (to hide)
  const fadeOutFlashMessage = () => {
    //Variable timer as the return value to specify setInterval_Store in id
    const timer_id = setInterval(() => {
      //Get style attribute opacity of flash message
      const opacity = flashMessage.style.opacity;

      if (opacity > 0) {
      //0 if the opacity value is greater than 0.Decrease the value by 02
        flashMessage.style.opacity = opacity - 0.02;
      } else {
        //Hide when the opacity value reaches 0
        flashMessage.style.display = 'none';
        //Stop setInterval
        clearInterval(timer_id);
      };
    }, 50); //This time 0.Execute setInterval every 05 seconds
  }

  //Run only if there is a flash message
  if (flashMessage !== null) {
    //set style attribute opacity
    flashMessage.style.opacity = 1;
    //This time, execute the function that fades out as defined above 3 seconds after the display.
    setTimeout(fadeOutFlashMessage, 3000);
  };
});

document.addEventListener('DOMContentLoaded', () => {

  // Get all "navbar-burger" elements
  const $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);

  // Check if there are any navbar burgers
  if ($navbarBurgers.length > 0) {

    // Add a click event on each of them
    $navbarBurgers.forEach( el => {
      el.addEventListener('click', () => {

        // Get the target from the "data-target" attribute
        const target = el.dataset.target;
        const $target = document.getElementById(target);

        // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
        el.classList.toggle('is-active');
        $target.classList.toggle('is-active');

      });
    });
  }

});