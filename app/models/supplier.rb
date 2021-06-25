class Supplier < ApplicationRecord
  def product
    Product.find_by(supplier_id: id)
  end
end
