class UserExercise < ApplicationRecord
    belongs_to :exercise
    belongs_to :user
end
