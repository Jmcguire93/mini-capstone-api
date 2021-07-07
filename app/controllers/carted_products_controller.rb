class CartedProductsController < ApplicationController
  
  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "Carted"
    )

    if carted_product.save
      render json: carted_product 
    else
      render json: { errors: carted_product.errors.full_messages },
      status: :unprocessable_entity
    end 
  end

  def index
    carted_products = current_user.carted_products.where(status: "Carted")
    render json: carted_products
  end
end
