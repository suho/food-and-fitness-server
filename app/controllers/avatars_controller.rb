class AvatarsController < ApplicationController
  def upload
    @user = User.find(1)
    @user.image = params[:file]
    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors
    end
  end
end
