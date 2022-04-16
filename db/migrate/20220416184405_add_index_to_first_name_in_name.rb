class AddIndexToFirstNameInName < ActiveRecord::Migration[7.0]
  def change
    add_index :names, :first_name
  end
end
