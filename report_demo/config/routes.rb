Rails.application.routes.draw do
  resources :emails
  resources :contacts_users
  resources :emails_users
  resources :reports
  resources :contacts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
