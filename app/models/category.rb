class Category < ApplicationRecord
    has_many :products, dependent: :destroy
    has_many :active_products, class_name: "Product", dependent: :destroy

    # scope :with_active_products, -> {
    #     includes(:products)
    #         .select("products.status")
    #         .where(products: {status: :active})
    # }
    scope :with_active_products, -> {
        includes(:active_products)
            .where(products: {status: :active})
    }
end
