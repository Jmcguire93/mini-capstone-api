class OrdersController < ApplicationController
  before_action :authenticate_user, except: [:show]

  def create
    product = Product.find_by(id: params[:product_id])
    calculated_subtotal = product.price * params[:quanity].to_i
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    order = Order.new(
      user_id: current_user.id, 
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: calculated_subtotal,  
      tax: calculated_tax,            
      total: calculated_total         
    )

    if current_user && order.save
      render json: order #.as_json
    else
      render json: {unauthorized_access: "You need to be logged in"}, status: :unauthorized
    end 
  end

  def show
    #order_id = params["id"]
    order = current_user.orders.find_by(id: params[:id])     #find(order_id)
    render json: order                      
  end

  def index
    orders = current_user.orders
    render json: orders                   
  end
end
