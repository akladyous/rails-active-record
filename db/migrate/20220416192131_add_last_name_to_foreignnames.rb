class AddLastNameToForeignnames < ActiveRecord::Migration[7.0]
  def change
    add_column :foreignnames, :last_name, :string
  end
end
