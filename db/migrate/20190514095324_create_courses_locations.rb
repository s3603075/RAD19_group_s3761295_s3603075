class CreateCoursesLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :courses_locations do |t|
      t.references :course_id, foreign_key: true
      t.references :location_id, foreign_key: true

      t.timestamps
    end
  end
end
