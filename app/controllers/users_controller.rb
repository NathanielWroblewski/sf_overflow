class UsersController < ApplicationController

  def create
    @user = User.create(params[:user])
    session[:id] = @user.id
    redirect_to @user
  end

  def new
    @user = User.new
  end

  def edit

  end

  def show
    @user = User.find(session[:id])
    @users_questions = Question.where(:user_id => @user.id)
  end

  def update

  end

  def destroy

  end

end
