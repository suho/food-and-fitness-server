class UserHistorySerializer < ActiveModel::Serializer
  attributes :id, :height, :weight, :created_at
  belongs_to :user, serializer: UserSerializer
  belongs_to :goal, serializer: GoalSerializer
  belongs_to :active, serializer: ActiveSerializer
end
