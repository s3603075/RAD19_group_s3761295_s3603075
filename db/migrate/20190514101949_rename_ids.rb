class RenameIds < ActiveRecord::Migration[5.1]
  def change
    rename_column :courses_locations, :course_id_id, :course_id
    rename_column :courses_categories, :course_id_id, :course_id
    rename_column :courses_locations, :location_id_id, :location_id
    rename_column :courses_categories, :category_id_id, :category_id
  end
end
