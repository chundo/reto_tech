Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    namespace :v1, defaults: { format: :json } do
      get 'cart/:user/:name' => 'products#cart'
      #get 'cart' => 'products#cart'
    end
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :order_details
  resources :sales
  resources :orders
  resources :cities
  devise_for :users
  resources :products
  resources :product_categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
