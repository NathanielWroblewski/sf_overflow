$(document).ready(function() {
  
  function Form(selector){
    this.selector = selector
    this.displayed = false;
  };

  Form.prototype.render = function(){
    $(this.selector).slideToggle();
  };

  Form.prototype.reveal = function(){
    this.displayed = true
  };

  Form.prototype.hide = function(){
    this.displayed = false
  };

  Form.prototype.isHidden = function(){
    return !this.displayed;
  };

  Form.prototype.isDisplayed = function(){
    return this.displayed;
  };

  var logIn = new Form('.login_form')
  var signUp = new Form('.signup_form')
  
  var formPossibilitiesFor = function(formClicked, otherForm){
    if (formClicked.isHidden() && otherForm.isDisplayed()) {
      otherForm.hide();
      formClicked.reveal();
      otherForm.render()
      setTimeout(function(){
        formClicked.render();
      },500);
    }
    else if (formClicked.isHidden()) {
      formClicked.reveal();
      formClicked.render();
    }
    else if (formClicked.isDisplayed){
      formClicked.hide();
      formClicked.render();
    }
  }; 

  $('#login_button').on('click', function(e){
    e.preventDefault();
    formPossibilitiesFor(logIn, signUp);
  });

  $('#signup_button').on('click', function(e){
    e.preventDefault();
    formPossibilitiesFor(signUp, logIn);
  });
});
