class SessionsController < ApplicationController
# authenticated new users

  def create
    @user = User.find_by_email(params["email"])
    if @user.password = params["password"]
      session[:id] = @user.id
      p "good"
      render :nothing => true, status: :ok
    else
      p "bad"
      render :nothing => true, status: :bad_request
    end
  end


end
