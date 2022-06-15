class CreateDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :details do |t|
      t.string :Firstname 
      t.string :Lastname

      t.timestamps
    end
  end
end
