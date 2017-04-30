class UserHistory < ApplicationRecord
    belongs_to :user    
    belongs_to :goal
    belongs_to :active
end
