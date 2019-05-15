class Course < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :course_name, presence: true, length: { minimum: 10 }
  validates :prerequisite, presence: true, length: { minimum: 10 }
  validates :description, presence: true, length: { minimum: 10 }


  has_many :courses_categories
  has_many :courses_locations
  has_many :locations, through: :courses_locations
  has_many :categories, through: :courses_categories

  mount_uploader :picture, PictureUploader

  acts_as_votable
end
