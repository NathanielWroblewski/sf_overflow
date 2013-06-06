class AnswersController < ApplicationController

  def create
    @answer = Answer.create(params[:answer])
    @answer.update_attributes(:user_id => session[:id], :answerable_type => params[:answer][:answerable_type], :answerable_id => params[:answer][:answerable_id].to_i)
    if params[:answer][:answerable_type] == "Question"
      @question = Question.find(params[:answer][:answerable_id].to_i)
      redirect_to @question
    elsif params[:answer][:answerable_type] == "Answer"
      #implement later
    else
    end
  end

  def new
    @answer = Answer.new
  end

  def edit
    @answer = Answer.find(params[:id])
    if @answer.answerable_type == "Question"
      @question = Question.find(@answer.answerable_id)
    elsif @answer.answerable_type == "Answer"
      #this is still gonna suck
    else
    end
  end

  def show
    @answer = Answer.find(params[:id])
    if @answer.answerable_type == "Question"
      @question = Question.find(@answer.answerable_id)
      redirect_to @question
    elsif @answer.answerable_type == "Answer"
      #this is gonna suck
    else
    end
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
