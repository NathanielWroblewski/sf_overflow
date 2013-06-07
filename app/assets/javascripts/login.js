$(document).ready(function() {
  $("#login_button").on("click", 'a', function(e){
    $("#signup_button").unbind();
    e.preventDefault();
    $(".login_form").slideToggle();
  });
});
