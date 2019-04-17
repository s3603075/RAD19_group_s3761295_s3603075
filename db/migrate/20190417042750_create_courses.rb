class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :prerequisite
      t.string :category
      t.string :location
      t.string :coordinator_name

      t.timestamps
    end
  end
end
