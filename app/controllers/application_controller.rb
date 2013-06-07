require 'authentication'

class ApplicationController < ActionController::Base
  protect_from_forgery
  include Authentication
  
  def polymorphic_validation(params)
    if params[:answer][:answerable_type] == "Question"
      @question = Question.find(params[:answer][:answerable_id].to_i)
    elsif params[:answer][:answerable_type] == "Answer"
      #implement later
    else
    end
  end

end


