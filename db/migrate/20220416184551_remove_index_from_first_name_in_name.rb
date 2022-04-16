class RemoveIndexFromFirstNameInName < ActiveRecord::Migration[7.0]
    def change
        remove_index :names, column: :first_name
    end
end
