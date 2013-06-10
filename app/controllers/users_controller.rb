class UsersController < ApplicationController
  
  def create
    @user = User.create(params[:user])
    if @user.id.nil?
      redirect_to root_path, :flash => { :error => "Invalid username, email or password." }
    else 
      session[:id] = @user.id
      redirect_to @user
    end
  end

  def new
    @user = User.new
  end

  def edit

  end

  def show
    @user = User.find(session[:id])
    @users_questions = Question.where(:user_id => @user.id)
    @users_answers = Answer.where(:user_id => @user.id)
    @question = Question.new
  end

  def update

  end

  def destroy
  end

end
