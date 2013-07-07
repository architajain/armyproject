class ApplicationController < ActionController::Base
  protect_from_forgery
  def current_authentication
          @current_authentication ||= Authentication.find(session[:authentication_id]) if session[:authentication_id]
        end

        def require_valid_authentication
          if session[:authentication_id] == nil
            redirect_to login_path
          end
        end
      
end
