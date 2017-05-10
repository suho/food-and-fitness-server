class Admin::ExercisesController < ActionController::Base
  before_action :require_login, :only => [:index, :edit, :update, :destroy]
  layout "application"
  def require_login
    if session[:user] == nil
      flash[:error] = "You must be logged in to access this section"
      redirect_to "/admin/login"
    end
  end

  def index
    @exercises = Exercise.all
  end

  def show
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
    # user_update = User.find(params[:id])
    # user_update.username = params[:username]
    # user_update.description = params[:description]
    # user_update.age = params[:age]
    # if user_update.save
    #   redirect_to "/users/index"
    # end
  end

  def destroy
    # User.destroy(params[:id])
    # redirect_to :back
  end
end