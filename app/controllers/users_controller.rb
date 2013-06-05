class UsersController < ApplicationController

  def create
    p params
    @user = User.create(params[:user])

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
