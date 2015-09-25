require 'api_constraints'

Rails.application.routes.draw do

  root to: 'products#index'
  
  get 'messaging', to: 'messaging#stream_message'
  
  namespace :api, defaults: { format: 'json' } do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: :true) do
      resources :products
    end
  end
  
  get 'stream_products', to: 'products#stream_products'
  resources :products do
    resources :images, shallow: true
  end
  
  devise_for :users
  
end
