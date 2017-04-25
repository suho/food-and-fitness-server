class TrackingsController < ApplicationController
    before_action :authenticate_user!
  def index
  end

  def show
  end

  def create
      tracking = Tracking.new(tracking_params)
      tracking.user_id = current_user.id
      if tracking.save
        render json: tracking, status: :created, serializer: TrackingSerializer, root: 'data'  
      else
        render_errors(tracking)  
      end
  end

  def update
  end

  def destroy
  end

  private

  def tracking_params
    params.permit(:active, :duration, :distance, locations_attributes: [:latitude, :longitude] )
  end

end
