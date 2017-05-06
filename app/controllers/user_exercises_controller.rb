class UserExercisesController < ApplicationController
  before_action :authenticate_user!
  def index
    user_exercises = UserExercise.joins(user_history: :user).where("users.id = #{current_user.id}")
    render json: user_exercises, each_serializer: UserExerciseSerializer, root: 'data'
  end

  def show
  end

  def create
    user_exercise = UserExercise.new
    user_exercise.duration = params[:duration]
    userHistory = UserHistory.where(["user_id = ?", current_user.id]).last
    user_exercise.user_history_id = userHistory.id
    user_exercise.exercise_id = params[:exercise_id]
    if user_exercise.save 
      render json: user_exercise, status: :created, serializer: UserExerciseSerializer, root: 'data'
    else
      render_errors(user_exercise)
    end
  end

  def update
  end

  def destroy
    user_exercise = UserExercise.find(params[:id])
    user_exercise.destroy
  end
end
