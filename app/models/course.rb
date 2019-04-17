class Course < ApplicationRecord
  belongs_to :category
  has_many :location
end
