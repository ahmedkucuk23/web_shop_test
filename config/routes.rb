Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :teddies, only: [:index, :show]

end
