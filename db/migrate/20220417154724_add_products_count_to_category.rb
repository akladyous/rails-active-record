class AddProductsCountToCategory < ActiveRecord::Migration[7.0]
    def change
        add_column :categories, :products_count, :integer, default: 0

        reversible do |dir|
            dir.up do
                Category.all.each do |category|
                    count = category.products.size
                    category.update_attribute(:products_count, count)
                end
            end
            dir.down do
                # remove_column
            end
        end
    end
end
