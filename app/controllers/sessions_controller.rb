class SessionsController < ApplicationController

  def new
    @user = User.find_by_username(params["username"])
    if @user
      if @user.password = params["password"]
       session[:id] = @user.id
       redirect_to questions_path
      end
    else
       redirect_to '/', :flash => { :error => "Invalid username or password" }
    end
  end

  def create
    @user = User.find_by_uid(auth_hash[:uid])
     if @user
      session[:id] = @user.id
      redirect_to questions_path
     elsif
       @user = User.find_by_email(auth_hash[:extra][:raw_info][:email])
        if @user
          @user.update_attributes(uid: auth_hash[:uid], provider: auth_hash[:provider])
          session[:id] = @user.id
          redirect_to questions_path
        end
      else
       redirect_to '/', :flash => { :error => "Facebook Authentication Failure." }
    end
  end

  def destroy
    session.clear
    redirect_to questions_path
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end

end
