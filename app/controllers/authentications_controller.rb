class AuthenticationsController < ApplicationController
  def new
  	@authentication = Authentication.new
  end

  def create
  	@authentication = Authentication.new(params[:authentication])
          if @authentication.save
            redirect_to root_url, notice: "Signed up!"
          else
            render :new
         
        end
  end
end
