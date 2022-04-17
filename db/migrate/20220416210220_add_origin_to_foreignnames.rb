class AddOriginToForeignnames < ActiveRecord::Migration[7.0]
  def change
    add_column :foreignnames, :origin, :string
  end
end
