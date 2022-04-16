class Product < ApplicationRecord
    belongs_to :category
    belongs_to :active_products, -> { select(:id, :active) }, class_name: "Product", optional: true

    enum status: {active: 0, inactive: 1, sold: 2, out_of_stock: 3}
    
    delegate :name, to: :category, prefix: true, allow_nil: true
end
