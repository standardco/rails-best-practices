Rails.application.routes.draw do
  
  resources :images

  resources :products

  root 'home#index'
  
  devise_for :users
  
end
