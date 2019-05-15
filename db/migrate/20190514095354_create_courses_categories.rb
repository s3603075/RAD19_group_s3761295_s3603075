class CreateCoursesCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :courses_categories do |t|
      t.references :course, foreign_key: true
      t.references :categorygit, foreign_key: true

      t.timestamps
    end
  end
end
