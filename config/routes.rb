Rails.application.routes.draw do

  resources :products do
    resources :images, shallow: true
  end

  root 'home#index'
  
  devise_for :users
  
end
