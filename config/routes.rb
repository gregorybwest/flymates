Rails.application.routes.draw do
  get "/users" => "users#index"
  post "/users" => "users#create"
  get "/users/:id" => "users#show"
  patch "users/:id" => "users#update"
  delete "users/:id" => "users#destroy"

  get "/airports" => "airports#index"
  post "/airports" => "airports#create"
  get "/airports/:id" => "airports#show"
  patch "airports/:id" => "airports#update"
  delete "airports/:id" => "airports#destroy"



  post "/sessions" => "sessions#create"

end
