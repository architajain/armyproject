class SessionsController < ApplicationController
  def new
  end

  def create
  		
          authentication = Authentication.find_by_empid(params[:session][:empid])
        	   if authentication && authentication.authenticate(params[:session][:password])
                user = User.find_by_empid(params[:session][:empid])
                session[:user_id] = user.id
                redirect_to users_url, :notice => "Logged in!"
              else
                flash[:notice] = "Invalid empid or password"
                redirect_to new_session_path
            end
  end

  def destroy

  	session[:authentication_id] = nil
  end
end
