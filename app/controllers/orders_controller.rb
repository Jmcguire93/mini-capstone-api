class OrdersController < ApplicationController
  def create
    product = Product.find_by(id: params[:product_id])
    calculated_subtotal = product.price * params[:quanity].to_i
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    order = Order.new(
      user_id: current_user.id, 
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: calculated_subtotal,  #product.price * params[:quanitity].to_i,
      tax: calculated_tax,            #product.tax * params[:quantity].to_i,
      total: calculated_total         #product.total * params[:quanitity].to_i
    )

    if order.save
      render json: order #.as_json
    else
      render json: { errors: order.error.full_messages },
      status: :unprocessable_entity
    end 
  end

  def show
    #order_id = params["id"]
    order = current_user.orders.find_by(id: params[:id])     #find(order_id)
    render json: order                      
  end

  def index
    if current_user 
      orders = current_user.orders
      render json: orders  
    else
      render json: {unauthorized_access: "You need to be logged in"}, status: :unauthorized
    end                   
  end
end
