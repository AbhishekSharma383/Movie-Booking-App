class Venue < ApplicationRecord
  has_one_attached :image
  has_many :showtimes, dependent: :destroy
  has_many :movies, through: :showtimes
end