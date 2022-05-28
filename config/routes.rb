Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/home', to: 'home#index'
  get '/param', to: 'home#param'
  get '/book/:book_id', to: 'home#param'

  # use all routes in resources
  resources :books

  # use only destroy routes in resources
  # resources :books, only: [:destroy]

  # use only destroy routes in resources
  # resources :books, except: [:destroy]

end
