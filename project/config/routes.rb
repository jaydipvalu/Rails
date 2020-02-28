Rails.application.routes.draw do
  resources :orders
  resources :users
  resources :cars
  resources :car_types
  resources :versions
  resources :models
  resources :brands
  resources :cars do
    member do
      put :active
      put :deactive
    end
  end
  resources :brands do
      resources :cars
  end

  namespace :admin do
    resources :models do
      resources :brands
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
