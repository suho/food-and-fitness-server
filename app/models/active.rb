class Active < ApplicationRecord
    has_many :users
    has_many :user_histories
end
