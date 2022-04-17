class AddCounterToForeignnames < ActiveRecord::Migration[7.0]
  def change
    add_column :foreignnames, :counter, :integer
  end
end
