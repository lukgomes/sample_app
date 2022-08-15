Rails.application.routes.draw do

  # routes to session view
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'
  get '/login', to: 'sessions#new'

  # routes to users view
  resources :users

  # routes to static pages view
  get '/contact', to: 'static_pages#contact'
  get '/about', to: 'static_pages#about'
  get '/help', to: 'static_pages#help'
  root 'static_pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
