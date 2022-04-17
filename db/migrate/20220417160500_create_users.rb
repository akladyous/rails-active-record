class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.belongs_to :company, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.boolean :active
      t.integer :role

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
