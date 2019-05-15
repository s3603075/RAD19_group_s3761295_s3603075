class RenameImagePathToDescription < ActiveRecord::Migration[5.1]
  def change
    rename_column :courses, :image_path, :description
  end
end
