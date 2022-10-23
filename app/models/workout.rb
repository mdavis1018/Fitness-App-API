class Workout < ApplicationRecord
  belongs_to :user
  has_many :workout_details
  has_many :excercises, through: :workout_details
end
