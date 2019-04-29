class CreateRates < ActiveRecord::Migration[5.1]
  def change
    create_table :rates do |t|
      t.integer :like
      t.integer :dislike

      t.timestamps
    end
  end
end
