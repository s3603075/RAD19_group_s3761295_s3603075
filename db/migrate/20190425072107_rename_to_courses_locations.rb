class RenameToCoursesLocations < ActiveRecord::Migration[5.1]
  def change
    rename_table :course_locations, :courses_locations
  end
end
