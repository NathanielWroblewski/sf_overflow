require 'vote_controller_helper'

class ApplicationController < ActionController::Base
  protect_from_forgery
  include Authentication
  include VotesHelper
  
  def polymorphic_validation(params)
    if params[:answer][:answerable_type] == "Question"
      @question = Question.find(params[:answer][:answerable_id].to_i)
    elsif params[:answer][:answerable_type] == "Answer"
      #implement later
    else
    end
  end

  helper_method :current_user

end


