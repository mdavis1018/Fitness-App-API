class User < ApplicationRecord
  has_many :workouts
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
