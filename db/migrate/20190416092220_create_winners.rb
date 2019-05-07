class CreateWinners < ActiveRecord::Migration[5.2]
  def change
    create_table :winners do |t|
      t.string :competition
      t.string :winner
      t.integer :order

      t.timestamps
    end
  end
end
