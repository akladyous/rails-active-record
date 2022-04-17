class AddSupervisorIdToTeachers < ActiveRecord::Migration[7.0]
  def change
    add_column :teachers, :supervisor_id, :integer
    add_index :teachers, :supervisor_id
  end
end
