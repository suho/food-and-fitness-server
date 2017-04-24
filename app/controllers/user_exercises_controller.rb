class UserExercisesController < ApplicationController
  def index
  end

  def show
  end

  def create
    user_exercise = UserExercise.new
    user_exercise.duration = params[:duration]
    user_exercise.user_id = current_user.id
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
  end
end
