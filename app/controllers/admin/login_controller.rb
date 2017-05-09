class Admin::LoginController < ActionController::Base
  def index
    @error = params[:error]
    # if session[:user]
    #   redirect_to "/admin/home"
    # end
  end

  def create
    username = params[:username]
    user_pass = params[:password]
    if username == "admin" && user_pass == "admin"
      session[:user] = username
      redirect_to "/admin/home"
    else
      redirect_to "/admin/login?error=xxx"
    end
  end

  def destroy
    session[:user] = nil
    redirect_to '/admin/login'
  end
end
