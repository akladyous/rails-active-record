class RenameNamePrefixToPrefixInForeignnames < ActiveRecord::Migration[7.0]
  def change
    rename_column :foreignnames, :name_prefix, :prefix
  end
end
