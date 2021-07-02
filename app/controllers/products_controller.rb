class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]
  
  def first_product
    product = Product.first
    render json: product.as_json
  end

  def second_product
    product = Product.second
    render json: product.as_json
  end

  def index
    if params[:category]
      category = Category.find_by(name: params[:category])
      products = category.products
    else
      products = Product.all 
    end
    render json: products
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
    if current_user && current_user.admin
      product = Product.new(
        name: params["name"],
        price: params["price"],
        image_url: params["image_url"],
        description: params["description"],
        stock: params["stock"],
        supplier_id: params[:supplier_id]
      )

      if product.save
        render json: product.as_json
      else
        render json: { errors: product.error.full_messages },
        status: :unprocessable_entity
      end 
    else 
      render json: {}, status: :unauthorized
    end
  end

  def update
    product_id = params["id"]
    product = Product.find_by(id: product_id)

    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["description"] || product.description
    product.stock = params["stock"] || product.stock
    
    if product.save 
      render json: product.as_json
    else
      render json: { errors: product.error.full_messages },
      status: :unprocessable_entity
    end
  end

  def destroy
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    
    if product.destroy
      render json: {message: "Product sucesfully destroyed."}
    else
      render json: { errors: product.error.full_messages },
      status: :unprocessable_entity
    end
  end
end
