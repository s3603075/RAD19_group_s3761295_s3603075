class CourseLocation < ApplicationRecord
  belongs_to :course
  belongs_to :location
end
