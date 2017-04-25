class TrackingSerializer < ActiveModel::Serializer
  attributes :id, :active, :duration, :distance, :created_at
  belongs_to :user, serializer: UserSerializer
  has_many :locations, serializer: LocationSerializer
end
