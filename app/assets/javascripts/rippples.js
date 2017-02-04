$(document).ready(function() {

  var navbar = $(".navbar");
  $(".navbtn").click(function() {
    navbar.toggleClass("navbar-down");
  });

  $(".logo").click(function() {
    navbar.removeClass("navbar-down");
  })
});
