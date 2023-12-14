Rails.application.routes.draw do
  get 'errors/not_authorized'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :tickets do
    member do
      post 'book'
      delete 'unbook'
    end
  end

  get 'errors/not_authorized', to: 'errors#not_authorized'

  # Defines the root path route ("/")
  root 'home#index'
end
