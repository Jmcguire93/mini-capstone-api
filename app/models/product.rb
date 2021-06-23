class Product < ApplicationRecord
  validates :name, :price, :image_url, :description, :stock, presence: true  

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
end
