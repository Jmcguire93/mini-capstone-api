class ProductsController < ApplicationController
  def first_product
    product = Product.first
    render json: product.as_json
  end

  def second_product
    product = Product.second
    render json: product.as_json
  end

  def index
    products = Product.all 
    render json: all_products.as_json
  end

  def query_params
    input_value = params["product"]
    render json: {product: "The product is #{input_value}."}
  end

  def segment_params
    input_value = params["key"]
    render json: {message: "The url segment is #{input_value}."}
  end

  def one_product
    product_id = params["id"]
    product = Product.find_by(id: product_id) 
    render json: product.as_json 
  end

  def body_params
    input_value = params["secret_info"]
    render json: {message: "The secret info is #{input_value}."}
  end
end
