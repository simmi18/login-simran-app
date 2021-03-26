 Rails.application.routes.draw do
  root to: 'welcomes#index'
  
  
devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end
  resources :services
  resources :details
  resources :carts
  resources :cart_items
  get '/search' => 'welcomes#search', :as => 'search_page'
  get '/details' => 'details#index', :as => 'details_page'
  devise_for :users
  resources :authors
   get '/authors/:id', action: :delete, controller: 'authors'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
