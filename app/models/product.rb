class Product < ApplicationRecord
  def is_discounted?
    if product.price > 10
      return true
    else
      return false
    end
  end

  def tax 
    tax = .09
    return product.price * tax 
  end

  def total
    return product.price + tax 
  end
end
