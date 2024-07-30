Rails.application.routes.draw do
  resources :categories
  resources :products
    root to: "home#index"

  namespace :admin do
    get 'dashboard', to: 'dashboard#index', as: 'dashboard'
  end

  devise_for :users,  controllers: { sessions: 'users/sessions', passwords: 'users/passwords', registrations: 'users/registrations'}

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
