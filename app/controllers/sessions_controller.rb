class SessionsController < ApplicationController

  def create
    @user = User.find_by_email(params["email"])
    if @user
      if @user.password = params["password"]
       session[:id] = @user.id
       redirect_to @user
      end
    else
       render :nothing => true, status: :bad_request
    end
  end


end
