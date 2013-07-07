class HomeController < ApplicationController
	before_filter :require_valid_authentication
  def show
  end
end
