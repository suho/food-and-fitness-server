class AvatarsController < ApplicationController
  before_action :authenticate_user!

  def upload
    if current_user.update(image: params[:file])
      render json: current_user, status: :created
    else
      render json: current_user.errors
    end
  end
end
