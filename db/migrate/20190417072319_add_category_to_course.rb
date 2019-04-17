class AddCategoryToCourse < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :category, :int
  end
end
