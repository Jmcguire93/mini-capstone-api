Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/first_product", controller: "products", action: "first_product"

  get "/second_product", controller: "products", action: "second_product"

  get "/products", controller: "products", action: "index"    ##

  get "/query_params", controller: "products", action: "query_params"

  get "/segment_params/:key", controller: "products", action: "segment_params"

  get "/products/:id", controller: "products", action: "show"     ##

  post "/body_params", controller: "products", action: "body_params"

  post "/products", controller: "products", action: "create"    ## creates instances

  patch "/products/:id", controller: "products", action: "update"   ## updates instances
end
