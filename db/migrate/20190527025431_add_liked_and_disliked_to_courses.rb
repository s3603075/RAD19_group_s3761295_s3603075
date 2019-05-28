class AddLikedAndDislikedToCourses < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :liked, :integer
    add_column :courses, :disliked, :integer
  end
end
