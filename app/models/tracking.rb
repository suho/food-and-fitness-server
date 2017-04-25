class Tracking < ApplicationRecord
    belongs_to :user
    has_many :locations
    accepts_nested_attributes_for :locations
end
