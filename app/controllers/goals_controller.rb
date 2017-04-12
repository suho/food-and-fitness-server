class GoalsController < ApplicationController
  def index
  end

  def create
    goal = Goal.new
    goal.name = params[:name]
    goal.detail = params[:detail]
    if goal.save 
      render json: goal, status: :created, serializer: GoalSerializer, root: 'data'
    else
      render_errors(goal)
    end
  end
end
