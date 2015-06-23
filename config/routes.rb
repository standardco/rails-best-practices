Rails.application.routes.draw do
  
  resources :products

  root 'home#index'
  
  devise_for :users
  
end
