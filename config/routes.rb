Rails.application.routes.draw do

  ### PRODUCTS
  get "/products" => "products#index"

  post "/products" => "products#create"

  get "/products/:id" => "products#show"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"

  ### USERS
  post "/users" => "users#create"
end
