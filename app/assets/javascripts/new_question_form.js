// var Question = {
//   init :function() {
//     $('a.submit_question').on('click', this.toggleQuestionForm);
//     $('form#submit_question')on('ajax:success', this.appendQuestion);

//   },

 

//   toggleQuestionForm: function(e) {
//     e.preventDefault();
//     $('form#new_question_form').toggleClass('hidden');
//   }
// }

$(document).ready(function() {
  $('.submit_question a').on('click', function(e){
    e.preventDefault();
    $('.new_question_form').slideToggle();
    $('#question_title, #question_description').val('');
  }); 
  $('form#new_question').on('ajax:success', appendQuestion);
});
  function appendQuestion(event, data, status, xhr) {
    $('.new_question_form').slideToggle();
  }



//   $(".submit_question").on("click", 'a', function(e){
//     e.preventDefault();
//     $(".new_question_form").slideToggle();
//   });
//   $(".profile_questions")
// });

