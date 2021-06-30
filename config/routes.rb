Rails.application.routes.draw do

  get "/first_product", controller: "products", action: "first_product"

  get "/second_product", controller: "products", action: "second_product"

  post "/body_params", controller: "products", action: "body_params"
  
  get "/query_params", controller: "products", action: "query_params"
  
  get "/segment_params/:key", controller: "products", action: "segment_params"
  
  get "/products", controller: "products", action: "index"    ## Displays a list of all instances 

  get "/products/:id", controller: "products", action: "show"     ## Displays a specific instance
  
  post "/products", controller: "products", action: "create"    ## creates instances

  patch "/products/:id", controller: "products", action: "update"   ## updates instances

  delete "/products/:id", controller: "products", action: "destroy"  ##deletes a specific product/instance

  ## Users 
  
  post "/users", controller: "users", action: "create" 
  
  get "/users", controller: "users", action: "index"

  ## Sessions
  
  post "/sessions", controller: "sessions", action: "create"

  ## Orders
  
  post "/orders", controller: "orders", action: "create"

  get "/orders", controller: "orders", action: "index"

  get "/orders/:id", controller: "orders", action: "show"
end
