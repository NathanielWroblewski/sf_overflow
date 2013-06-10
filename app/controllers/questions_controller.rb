class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    @question = Question.new
    @user = User.new
  end

  def create
    @question = Question.new(params[:question])
    @question.update_attributes(:user_id => session[:id])
    @question.save
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def show
    p params
    @question = Question.find(params[:id])
    @answers = Answer.where(:question_id => @question.id)
    @answer = Answer.new
  end

  def update
    @question = Question.find(params[:id])
    @question.update_attributes(params[:question])
    redirect_to @question
  end

  def destroy
    question = Question.destroy(params[:id])
    Answer.where(:question_id => question.id).destroy_all
    @user = User.find(session[:id])
    redirect_to @user
  end
end
