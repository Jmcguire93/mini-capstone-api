class Supplier < ApplicationRecord
  def products
    Product.find_by(supplier_id: id)
  end
end
