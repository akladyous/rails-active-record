class AddSupervisorIdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :supervisor_id, :integer
    add_index :users, :supervisor_id
  end
end
