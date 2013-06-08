class AnswersController < ApplicationController

  def create
    @answer = Answer.create(params[:answer])
    @answer.update_attributes(:user_id => session[:id], 
                              :answerable_type => params[:answer][:answerable_type], 
                              :answerable_id => params[:answer][:answerable_id].to_i, 
                              :question_id => params[:answer][:question_id])
    @question = Question.find(@answer.question_id)
    redirect_to @question
  end

  def new
    @answer = Answer.new
  end

  def edit
    @answer = Answer.find(params[:id])
    @question = Question.find(@answer.question_id)
  end

  def show
    @answer = Answer.find(params[:id])
    @question = Question.find(@answer.question_id)
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
