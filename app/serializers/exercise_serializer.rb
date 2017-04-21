class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :calories, :duration 
  #, :image, :url
end
