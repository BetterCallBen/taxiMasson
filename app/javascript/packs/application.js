// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")


const faders = document.querySelectorAll(".fade-in")

const appearOptions = {};
const appearOnscoll = new IntersectionObserver
(function(
  entries,
  appearOnscoll
) {
  entries.forEach(entry => {
    if (!entry.isIntersecting) {
      return
    } else {
      entry.target.classList.add('appear');
      appearOnscoll.unobserve(entry.target)
    }
  })
}, appearOptions)

faders.forEach(fader => {
  appearOnscoll.observe(fader);
})
import "controllers"
import "bootstrap"
