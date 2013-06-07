$(document).ready(function() {
  $(".submit_question").on("click", 'a', function(e){
    e.preventDefault();
    $(".new_question_form").slideToggle();
  });

  
    // e.preventDefault();
    // $('.profile_questions').html("<%= escape_javascript(render '/questions/new_question')%>")
    // $('.profile_questions').html("<%= escape_javascript(render '/questions/new_question')%>")
  })
});

