Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/first_product", controller: "products", action: "first_product"

  get "/second_product", controller: "products", action: "second_product"

  get "/all_products", controller: "products", action: "all_products"

  get "/query_params", controller: "products", action: "query_params"

  get "/segment_params/:key", controller: "products", action: "segment_params"

  get "/one_product", controller: "products", action: "one_product"
end
