class CoursesLocation < ApplicationRecord
  belongs_to :course
  belongs_to :location
end
