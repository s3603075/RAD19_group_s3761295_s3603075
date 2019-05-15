class Location < ApplicationRecord
  has_many :courses_locations
  has_many :courses, through: :courses_locations

  validates :location_name, presence: true, length: { minimum: 10 }
end
