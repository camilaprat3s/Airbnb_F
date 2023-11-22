Rails.application.routes.draw do
  resources :accessories
  devise_for :users
  # root to: "pages#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "accessories", to: "accessories#index"

  get "accessories/:id", to: "accessories#show"

  get 'accessories/:id/confirm', to: 'accessories#confirm', as: 'confirm_accessory'

  # Defines the root path route ("/")
  root to: "accessories#index"
  post "accessories", to: "accessories#create"
  get "accessories", to: "accessories#index"
  get "accessories/:id", to: "accessories#show"
  patch "accessories/:id", to: "accessories#update"
  delete "accessories/:id", to: "accessories#destroy"


end
