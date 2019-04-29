class AddLikeAndDislikeToCourses < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :like, :integer
    add_column :courses, :dislike, :integer
  end
end
