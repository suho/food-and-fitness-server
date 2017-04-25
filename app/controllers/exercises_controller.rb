class ExercisesController < ApplicationController
  def index
    exercises = Exercise.all
    render json: exercises, each_serializer: ExerciseSerializer, root: 'data'
  end

  def show
  end

  def create
    exercise = Exercise.new
    exercise.name = params[:name]
    exercise.calories = params[:calories]
    exercise.duration = params[:duration]
    if exercise.save 
      render json: exercise, status: :created, serializer: ExerciseSerializer, root: 'data'
    else
      render_errors(exercise)
    end
  end

  def update
  end

  def destroy
  end
end
