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
    render json: products #.as_json(methods: [:is_discounted?, :tax, :total])
  end

  def query_params
    input_value = params["product"]
    render json: {product: "The product is #{input_value}."}
  end

  def segment_params
    input_value = params["key"]
    render json: {message: "The url segment is #{input_value}."}
  end

  def show
    product_id = params["id"]
    product = Product.find_by(id: product_id) #find(product_id)
    render json: product #.as_json(methods: [:is_discounted?, :tax, :total])
  end

  def body_params
    input_value = params["secret_info"]
    render json: {message: "The secret info is #{input_value}."}
  end

  def create
    product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
      stock: params["stock"]
    )

    product.save
    render json: product.as_json
  end

  def update
    product_id = params["id"]
    product = Product.find_by(id: product_id)

    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["description"] || product.description
    product.stock = params["stock"] || product.stock
    
    product.save 
    render json: product.as_json
  end

  def destroy
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    product.destroy

    render json: {message: "Product sucesfully destroyed."}
  end
end
