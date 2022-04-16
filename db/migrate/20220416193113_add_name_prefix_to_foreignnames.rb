class AddNamePrefixToForeignnames < ActiveRecord::Migration[7.0]
  def change
    add_column :foreignnames, :name_prefix, :string
  end
end
