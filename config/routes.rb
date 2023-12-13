Rails.application.routes.draw do
  root 'welcomes#index'
  post 'tourist/create'
  post 'sessions/login'
  resources :spots
  resources :tourist
  resources :sessions
  resources :welcomes
  resources :reservation
  
  get 'reservation/:id', to: 'reservation#show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
