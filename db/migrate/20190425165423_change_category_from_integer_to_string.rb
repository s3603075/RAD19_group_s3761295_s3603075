class ChangeCategoryFromIntegerToString < ActiveRecord::Migration[5.1]
  def change
    change_column :courses, :category, :string
  end
end
