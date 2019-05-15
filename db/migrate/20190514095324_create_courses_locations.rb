class CreateCoursesLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :courses_locations do |t|
      t.references :course, foreign_key: true
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
