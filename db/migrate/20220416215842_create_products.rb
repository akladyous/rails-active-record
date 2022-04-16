class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :qty
      t.decimal :price, precision: 5, scale: 2
      t.integer :status
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
