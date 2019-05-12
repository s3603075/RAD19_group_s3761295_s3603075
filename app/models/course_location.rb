class CourseLocation < ApplicationRecord
  self.table_name = "courses_locations"
  belongs_to :course
  belongs_to :location
end
