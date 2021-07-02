class Product < ApplicationRecord
  # validates :name, presence: true  
  # validates :name, uniqueness: true 
  # validates :price, presence: true 
  # validates :price, numericality: { greater_than: 0 }

  belongs_to :supplier
  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products

  # def categories
  #   product_categories.map do |product_category|
  #     product_category.category 
  #   end
  # end

  def is_discounted?
    if price > 10
      return true
    else
      return false
    end
  end

  def tax 
    tax = 0.09
    return price * tax 
  end

  def total
    return price + tax 
  end

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end
end
