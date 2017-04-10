class AvatarsController < ApplicationController
  def upload
    current_user.image = params[:file]
    if current_user.save
      render json: current_user, status: :created
    else
      render json: current_user.errors
    end
  end
end
