class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.string :competition
      t.string :entrant

      t.timestamps
    end
  end
end
