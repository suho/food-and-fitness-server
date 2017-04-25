class FoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :weight, :calories, :protein, :carbs, :fat
  #:image
end
