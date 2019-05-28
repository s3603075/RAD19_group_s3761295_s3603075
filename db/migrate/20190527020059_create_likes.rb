class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :course_id
      t.boolean :liked

      t.timestamps
    end
  end
end
