class Movie < ApplicationRecord
  
  has_one_attached :image
  has_many :showtimes, dependent: :destroy
  has_many :venues, through: :showtimes

end
