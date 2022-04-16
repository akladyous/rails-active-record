class AddDefaultValueToCounterInForeignnames < ActiveRecord::Migration[7.0]
  def change
    change_column_default :foreignnames, :counter, 0
  end
end
