class AddColumnToRateForCourseId < ActiveRecord::Migration[5.1]
  def change
    add_column :rates, :course_id, :integer
  end
end
