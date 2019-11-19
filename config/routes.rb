Rails.application.routes.draw do
  resources :sales
  resources :statuses
  resources :cities
  devise_for :users
  resources :products
  resources :product_categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
