class AddIndexToFirstNameInForeignnames < ActiveRecord::Migration[7.0]
  def change
    add_index :foreignnames, [:first_name, :foreignname_id], unique: true
  end
end
