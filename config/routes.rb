Rails.application.routes.draw do
  get 'tourspots/new'
  get 'tourspots/create'
  get 'tourspots/destroy'
  get 'tourspots/search1/:area', to: 'tourspots#search1', as:'search1'
  get 'spot/index'
  get 'spot/new'
  get 'spot/create'
  get 'spot/destroy'
  get 'spot/edit'
  get 'spot/show'
  get 'spot/search1'
  get 'spot/search2'
  get 'spot/search3'
  get 'spot/search4'
  get 'tour/index'
  get 'tour/new'
  get 'tour/create'
  get 'tour/destroy'
  get 'tour/search_guests1'
  get 'tour/search_guests2'
  get 'tour/search_guests3'
  # get 'reservation/index'
  # get 'reservation/new', to: 'reservations#new', as: :reservation_new
  # get 'reservation/create'
  # get 'reservation/edit'
  # get 'reservation/destroy'
  get 'reservations/record'
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
  post 'spot/create'
  post 'tour/create'
  post 'tourspots/create'
  post 'reservations/create'
  # post 'reservation/create'
  resources :spot
  resources :tourist
  resources :sessions
  resources :welcomes
  resources :reservations
  # resources :tourspots
  
  get 'reservation/:id', to: 'reservation#show'
  get 'reservations/:id', to: 'reservations#record'
  get 'get_spot/:id', to: 'spot#get_spot'

  get 'welcomes/fukuoka', to: 'welcomes#fukuoka'
  get 'welcomes/kitakyusyu', to: 'welcomes#kitakyusyu'
  get 'welcomes/chikuho', to: 'welcomes#chikuho'
  get 'welcomes/chikugo', to: 'welcomes#chikugo'

  get 'get_spot2/:id', to: 'spot#get_spot2'

  delete 'spot/:id', to: 'spot#destroy'
  get 'spot/:id', to: 'spot#show'
  get 'spot/:id/edit', to: 'spot#edit'
  patch 'spot/:id', to: 'spot#update'
  get 'tour/:id', to: 'tour#show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
