class FoodsController < ApplicationController
  def index
    foods = Food.all
    render json: foods, each_serializer: FoodSerializer, root: 'data'
  end

  def show
  end

  def create
    food = Food.new
    food.name = params[:name]
    food.weight = params[:weight]
    food.calories = params[:calories]
    food.protein = params[:protein]
    food.carbs = params[:carbs]
    food.fat = params[:fat]
    if food.save 
      render json: food, status: :created, serializer: FoodSerializer, root: 'data'
    else
      render_errors(food)
    end
  end

  def update
  end

  def destroy
  end
end
