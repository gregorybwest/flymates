Rails.application.routes.draw do
  resources :users do
    resources :reviews
  end

  resources :airports

  



  post "/sessions" => "sessions#create"

end
