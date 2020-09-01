Rails.application.routes.draw do
  resources :order_products
  resources :orders
  resources :people
  resources :faqs
  resources :neighborhoods
  resources :cities
  resources :products
  resources :subcategories
  resources :categories
  resources :users, only: [:create], param: :_username
  post '/auth/login', to: 'authentication#login'
  # get '/*a', to: 'application#not_found'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
