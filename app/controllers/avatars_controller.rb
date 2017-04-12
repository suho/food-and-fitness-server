class AvatarsController < ApplicationController
  before_action :authenticate_user!

  def upload
    if current_user.update(image: params[:file])
      render json: current_user, serializer: UserSerializer, root: 'data'
    else
      render_errors(current_user)
    end
  end
end
