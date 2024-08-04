Rails.application.routes.draw do

  # Define the root path route ("/")
  root to: "home#index"
  get "/shop" ,to: "home#shop"
  get "/about" ,to: "home#about"
  get "/blog" ,to: "home#blog"
  get "/contact" ,to: "home#contact"
  get "/services" ,to: "home#service"



  # resources :users, only: [:index, :show, :edit, :update, :destroy]

  namespace :admin do
    get 'dashboard', to: 'dashboard#index', as: 'dashboard'
    # get 'customers/show',to: 'customers#show', as: 'show'
    resources :customers, only: [:index, :show, :edit, :update, :destroy]
    resources :categories
    resources :products
    resources :orders


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
