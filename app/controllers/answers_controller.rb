class AnswersController < ApplicationController

  def create
    @answer = Answer.create(params[:answer])
    @answer.update_attributes(:user_id => session[:id], :answerable_type => params[:answer][:answerable_type], :answerable_id => params[:answer][:answerable_id].to_i)
    polymorphic_validation(params)
    redirect_to @question
  end

  def new
    @answer = Answer.new
  end

  def edit
    @answer = Answer.find(params[:id])
    polymorphic_validation(params)
  end

  def show
    @answer = Answer.find(params[:id])
    polymorphic_validation(params)
    redirect_to @question
  end

  def update
    @answer = Answer.find(params[:id])
    @answer.update_attributes(params[:answer])
    redirect_to @answer
  end

  def destroy
    Answer.destroy(params[:id])
    @user = User.find(session[:id])
    redirect_to @user
  end

end
