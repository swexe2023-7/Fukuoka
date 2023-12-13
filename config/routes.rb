Rails.application.routes.draw do
  get 'spot/index'
  get 'spot/new'
  get 'spot/create'
  get 'spot/destroy'
  get 'spot/edit'
  get 'spot/show'
  get 'tour/index'
  get 'tour/new'
  get 'tour/create'
  get 'tour/destroy'
  get 'reservation/index'
  get 'reservation/new'
  get 'reservation/create'
  get 'reservation/edit'
  get 'reservation/destroy'
  get 'spots/index'
  get 'spots/show'
  get 'tourist/new'
  get 'tourist/create'
  get 'tourist/destroy'
  get 'tourist/show'
  get 'sessions/main'
  get 'sessions/login'
  get 'sessions/logout'
  get 'welcomes/index'
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
