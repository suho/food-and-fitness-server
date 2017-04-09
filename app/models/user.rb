class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  include DeviseTokenAuth::Concerns::User
  mount_uploader :image, AvatarUploader

# belongs_to :section, foreign_key: :section_id
  belongs_to :goal, foreign_key: :goal_id
  belongs_to :active, foreign_key: :active_id
end
