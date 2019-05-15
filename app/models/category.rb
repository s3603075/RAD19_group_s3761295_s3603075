class Category < ApplicationRecord
  has_many :courses_categories
  has_many :courses, through: :courses_categories

  validates :category_name, presence: true, length: { minimum: 10 }
end
