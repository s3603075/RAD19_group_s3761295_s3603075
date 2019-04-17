class RemoveCategoryFromCourse < ActiveRecord::Migration[5.1]
  def change
    remove_column :courses, :category, :string
  end
end
