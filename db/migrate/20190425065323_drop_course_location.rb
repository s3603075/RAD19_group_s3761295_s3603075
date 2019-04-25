class DropCourseLocation < ActiveRecord::Migration[5.1]
  def change
    drop_table :courses_locations
  end
end
