class Order < ApplicationRecord
  belongs_to :user 
  has_many :carted_products
  has_many :products, through: :carted_products
  # belongs_to :product
  # has_many :products

  def money_math
    # carted_products = current_user.carted_products.where(status: "Carted")
   
    calculated_subtotal = 0
    carted_products.each do |carted_product|
      calculated_subtotal += carted_product.quantity * carted_product.product.price
    end
    calculated_tax = calculated_subtotal * 0.9 
    calculated_total = calculated_subtotal + calculated_tax

    self.subtotal = calculated_subtotal
    self.tax = calculated_tax,
    self.total = calculated_total
    self.save
  end
end
