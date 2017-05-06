class UserFoodsController < ApplicationController
  before_action :authenticate_user!
  def index
    user_foods = UserFood.joins(user_history: :user).where("users.id = #{current_user.id}")
    render json: user_foods, each_serializer: UserFoodSerializer, root: 'data'
  end

  def show
  end

  def create
    user_food = UserFood.new
    user_food.weight = params[:weight]
    userHistory = UserHistory.where(["user_id = ?", current_user.id]).last
    user_food.user_history_id = userHistory.id
    user_food.food_id = params[:food_id]
    user_food.meal = params[:meal]
    if user_food.save 
      render json: user_food, status: :created, serializer: UserFoodSerializer, root: 'data'
    else
      render_errors(user_food)
    end
  end

  def update
  end

  def destroy
    user_food = UserFood.find(params[:id])
    user_food.destroy
  end
end
