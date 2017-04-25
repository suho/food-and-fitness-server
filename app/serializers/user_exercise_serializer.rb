class UserExerciseSerializer < ActiveModel::Serializer
  attributes :id, :duration, :created_at
  belongs_to :exercise, serializer: ExerciseSerializer
  belongs_to :user, serializer: UserSerializer
end
