class OrdersController < ApplicationController
  def create
    order = Order.new(
      user_id: current_user.id #params["user_id"],
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: product.price * params[:quanitity].to_i,
      tax: product.tax * params[:quantity].to_i,
      total: product.total * params[:quanitity].to_i
    )

    if order.save
      render json: order #.as_json
    else
      render json: { errors: order.error.full_messages },
      status: :unprocessable_entity
    end 
  end

  def show
    order_id = params["id"]
    order = Order.find_by(id: order_id) #find(order_id)
    render json: order #.as_json(methods: [:is_discounted?, :tax, :total])
  end

  def index
    orders = Order.all 
    render json: orders #.as_json(methods: [:is_discounted?, :tax, :total])
  end
end
