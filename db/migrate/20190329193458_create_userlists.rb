class CreateUserlists < ActiveRecord::Migration[5.2]
  def change
    create_table :userlists do |t|
      t.string :name
      t.string :file

      t.timestamps
    end
  end
end
