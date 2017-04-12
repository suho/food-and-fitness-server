class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :email, :birthday, :gender, :height, :weight
  belongs_to :goal, serializer: GoalSerializer
  belongs_to :active, serializer: ActiveSerializer
end
