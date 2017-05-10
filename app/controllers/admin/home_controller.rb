class Admin::HomeController < ActionController::Base
  before_action :require_login, :only => [:index]
  layout "application"
  def require_login
    if session[:user] == nil
      flash[:error] = "You must be logged in to access this section"
      redirect_to "/admin/login"
    end
  end
  
  def index
  end
end