class CartedProductsController < ApplicationController
  def create
    
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      quantity: params[:quantity],
    )

      if carted_product.save
        render json: carted_product.as_json
      else
        render json: { errors: carted_product.error.full_messages },
        status: :unprocessable_entity
      end 
    else 
      render json: {}, status: :unauthorized
    end
  end
end
