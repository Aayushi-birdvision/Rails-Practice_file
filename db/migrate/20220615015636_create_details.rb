class CreateDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :details do |t|
      t.string :first_name
      t.string :Lastname

      t.timestamps
    end
  end
end
