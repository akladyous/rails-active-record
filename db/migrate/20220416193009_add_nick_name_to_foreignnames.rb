class AddNickNameToForeignnames < ActiveRecord::Migration[7.0]
  def change
    add_column :foreignnames, :nick_name, :string
    add_index :foreignnames, :nick_name
  end
end
