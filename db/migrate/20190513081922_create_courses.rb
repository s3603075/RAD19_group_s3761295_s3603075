class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :prerequisite
      t.text :image_path

      t.timestamps
    end
  end
end
