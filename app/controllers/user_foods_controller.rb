class UserFoodsController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def show
  end

  def create
    user_food = UserFood.new
    user_food.weight = params[:weight]
    user_food.user_id = current_user.id
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
