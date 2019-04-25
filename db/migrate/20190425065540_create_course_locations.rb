class CreateCourseLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :course_locations, id: false do |t|
      t.belongs_to :course, index: true
      t.belongs_to :location, index: true

      t.timestamps
    end
  end
end
