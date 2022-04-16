class RemoveFirstNameIndexFromForeignnames < ActiveRecord::Migration[7.0]
  def change
    remove_index :foreignnames, name: "index_foreignnames_on_first_name_and_foreignname_id"
  end
end
