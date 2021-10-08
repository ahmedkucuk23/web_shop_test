Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'
  post "teddies/add_to_cart/:id", to: "teddies#add_to_cart", as: "add_to_cart"
  delete  "teddies/remove_from_cart/:id", to: "teddies#remove_from_cart", as: "remove_from_cart"


  resources :teddies, only: [:index, :show]

  resources :orders, only: [:show, :create]

end
