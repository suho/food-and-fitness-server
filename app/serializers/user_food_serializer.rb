class UserFoodSerializer < ActiveModel::Serializer
  attributes :id, :weight, :created_at, :meal
  belongs_to :food, serializer: FoodSerializer
  belongs_to :user, serializer: UserSerializer
end
