class SessionsController < ApplicationController
authenticated new users

  def create
    p params
    @user = User.find_by_email!(params["email"])
    if @user.password = params["password"]
      session[:id] = @user.id
      render :nothing => true, status: :ok
    else
      render :nothing => true, status: :bad_request
    end
  end

end
