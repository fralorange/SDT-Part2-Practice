Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :tickets

  # Defines the root path route ("/")
  root 'home#index'
end
