Rails.application.routes.draw do

  root 'home#index'
  
  get 'messaging', to: 'messaging#stream_message'
  
  get 'stream_products', to: 'products#stream_products'
  resources :products do
    resources :images, shallow: true
  end
  
  devise_for :users
  
end
