Rails.application.routes.draw do

scope 'api' do 
  scope 'v1' do
    resources :user_infos
    resources :sub_category_neighborhoods
    resources :products
    resources :sub_categories
    resources :categories
    resources :orders
    resources :order_products
    resources :order_shippings
    resources :user_shippings
    resources :faqs
    resources :neighborhoods
    resources :cities
    resources :users, only: [:create], param: :_username
    post '/auth/login', to: 'authentication#login'
  end
end


# get '/*a', to: 'application#not_found'
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
