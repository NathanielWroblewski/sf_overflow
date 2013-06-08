$(document).ready(function() {
  $('.submit_question a').on('click', function(e){
    e.preventDefault();
    $('.new_question_form').slideToggle();
    $('#question_title, #question_description').val('');
  }); 

  $('.new_question').on('submit', function(){
    $('.new_question_form').slideToggle();
  });

});

