class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :details, :Firstname,:first_name
    rename_column :details, :Lastname , :last_name
  end
end
