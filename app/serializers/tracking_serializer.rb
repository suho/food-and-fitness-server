class TrackingSerializer < ActiveModel::Serializer
  attributes :id, :active, :duration, :distance, :created_at
  belongs_to :user_history, serializer: UserHistorySerializer
  has_many :locations, serializer: LocationSerializer
end
