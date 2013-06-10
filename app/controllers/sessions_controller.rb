class SessionsController < ApplicationController

  def create
    @user = User.find_by_uid(auth_hash[:uid])
     if @user
      self.current_user = @user
      session[:id] = @user.id
     elsif
       @user = User.find_by_email(auth_hash[:extra][:raw_info][:email])
        if @user
          @user.update_attributes(uid: auth_hash[:uid])
          self.current_user = @user
          session[:id] = @user.id
        end
      else
        @user = User.create(

        username: auth_hash[:extra][:raw_info][:username],
        email: auth_hash[:extra][:raw_info][:email],
        name: auth_hash[:extra][:raw_info][:first_name],
        uid: auth_hash[:uid],
        provider: auth_hash[:provider] 
        
        )
        
        # self.current_user = @user
        session[:id] = auth_hash[:id]
        session[:uid] = auth_hash[:uid]
        session[:name] = auth_hash[:extra][:raw_info][:first_name]
  
    redirect_to '/'
    end
  end


  protected

  def auth_hash
    request.env['omniauth.auth']
  end


  # def create
  #   @user = User.find_by_username(params["username"])
  #   if @user
  #     if @user.password = params["password"]
  #      session[:id] = @user.id
  #      redirect_to @user
  #     end
  #   else
  #      render :nothing => true, status: :bad_request
  #   end
  # end

  # def destroy
  #   session.clear
  #   redirect_to questions_path
  # end


end
