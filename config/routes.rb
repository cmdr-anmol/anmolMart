Rails.application.routes.draw do
  # Define the root path route ("/")
  root to: "home#index"

  resources :categories
  resources :products
  # resources :users, only: [:index, :show, :edit, :update, :destroy]

  namespace :admin do
    get 'dashboard', to: 'dashboard#index', as: 'dashboard'
    
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Define other routes below this line
end
