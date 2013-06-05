class QuestionsController < ApplicationController

  def index
    
  end

  def create

  end

  def new

  end

  def edit

  end

  def show
    @question = Question.find(params[:id])
  end

  def update

  end

  def destroy
    Question.destroy(params[:id])
  end

end
