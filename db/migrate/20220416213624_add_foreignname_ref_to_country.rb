class AddForeignnameRefToCountry < ActiveRecord::Migration[7.0]
  def change
    add_reference :countries, :foreignname, null: false, foreign_key: true
  end
end
