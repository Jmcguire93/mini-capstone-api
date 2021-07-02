class Category < ApplicationRecord
  has_many :product_categories
  has_many :products, through: :product_categories

  # def products
  #   product_categories.map do |_product_category| 
  #     product.category.product
  #   end
  # end
end
