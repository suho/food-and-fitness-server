class Admin::ActivesController < ActionController::Base
  before_action :require_login, :only => [:index, :edit, :update, :destroy]
  layout "application"
  def require_login
    if session[:user] == nil
      flash[:error] = "You must be logged in to access this section"
      redirect_to "/admin/login"
    end
  end

  def index
    @actives = Active.all
  end

  def show
    @active = Active.find(params[:id])
  end

  def new
  end

  def edit
    # @user_edit = User.find(params[:id])
  end

  def create
    # user = User.new
    # user.username = params[:username]
    # user.password = params[:password]
    # user.description = params[:description]
    # user.age = params[:age]
    # if user.save
    #   redirect_to "/login/index"
    # end
  end

  def update
    # binding.pry
    active = Active.find(params[:id])
    active.name = params[:name]
    active.detail = params[:detail]
    if active.save
      redirect_to "/admin/actives"
    end
  end

  def destroy
    # User.destroy(params[:id])
    # redirect_to :back
  end
end