class AnswersController < ApplicationController

  def index
    
  end

  def create
   @answer = Answer.create(params[:answer])
   @answer.update_attributes(:user_id => session[:id])
   redirect_to @answer
  end

  def new
    @answer = Answer.new
  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def show
    @answer = Answer.find(params[:id])
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
