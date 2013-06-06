class QuestionsController < ApplicationController

  def index
    
  end

  def create
   @question = Question.create(params[:question])
   @question.update_attributes(:user_id => session[:id])
   redirect_to @question
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def show
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.update_attributes(params[:question])
    redirect_to @question
  end

  def destroy
    Question.destroy(params[:id])
    @user = User.find(session[:id])
    redirect_to @user
  end

end
