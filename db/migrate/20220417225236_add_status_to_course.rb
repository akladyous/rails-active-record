class AddStatusToCourse < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :status, :integer, limit: 2
    add_index :courses, :status
  end
end
