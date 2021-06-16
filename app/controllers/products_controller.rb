class ProductsController < ApplicationController
  def one_product
    product = Product.first
    render json: product.as_json
  end
end
