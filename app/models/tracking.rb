class Tracking < ApplicationRecord
    belongs_to :user_history
    has_many :locations
    accepts_nested_attributes_for :locations
end
