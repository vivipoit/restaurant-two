Rails.application.routes.draw do
  resources :foods
  resources :clients
  resources :tables
  resources :orders
  
  root to: 'orders#index'
end
