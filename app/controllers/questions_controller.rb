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
      # render :json => render_to_string(:partial => 'question', :locals => { :question => @question}).to_json
    

   #  else
   #    render :json => {}
   # # redirect_to user_path(current_user)
   #  end
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def show
    @question = Question.find(params[:id])
    @answers = Answer.where(:answerable_type => "Question", :answerable_id => @question.id)
    @answer = Answer.new
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
