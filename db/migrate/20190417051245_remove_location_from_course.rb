class RemoveLocationFromCourse < ActiveRecord::Migration[5.1]
  def change
    remove_column :courses, :location, :string
  end
end
