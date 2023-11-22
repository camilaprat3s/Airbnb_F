Rails.application.routes.draw do
  get 'accessories/index'
  get 'accessories/show'
  get 'accessories/new'
  get 'accessories/create'
  get 'accessories/edit'
  get 'accessories/update'
  get 'accessories/destroy'
  devise_for :users
  # root to: "pages#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "accessories", to: "accessories#index"


  # Defines the root path route ("/")
  root to: "accessories#index"
  resources :accessories

end
