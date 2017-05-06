class TrackingsController < ApplicationController
    before_action :authenticate_user!
  def index
    trackings = Tracking.joins(user_history: :user).where("users.id = #{current_user.id}")
    render json: trackings, each_serializer: TrackingSerializer, root: 'data'
  end

  def show
  end

  def create
      tracking = Tracking.new(tracking_params)
      userHistory = UserHistory.where(["user_id = ?", current_user.id]).last
      tracking.user_history_id = userHistory.id
      if tracking.save
        render json: tracking, status: :created, serializer: TrackingSerializer, root: 'data'  
      else
        render_errors(tracking)  
      end
  end

  def update
  end

  def destroy
    tracking = Tracking.find(params[:id])
    tracking.destroy
  end


  private

  def tracking_params
    params.permit(:active, :duration, :distance, locations_attributes: [:latitude, :longitude] )
  end

end
