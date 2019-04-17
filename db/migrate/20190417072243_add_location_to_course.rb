class AddLocationToCourse < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :location, :int
  end
end
