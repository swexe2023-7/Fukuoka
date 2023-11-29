Rails.application.routes.draw do
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
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
