class RenameTableForeignnamesToForeignNames < ActiveRecord::Migration[7.0]
  def change
    rename_table :foreignnames, :foreign_names
  end
end
