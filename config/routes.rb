Rails.application.routes.draw do
  root to: 'welcomes#index'
  
  devise_for :users
  resources :services
  resources :details
  resources :carts
  resources :cart_items
  get '/search' => 'welcomes#search', :as => 'search_page'
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
