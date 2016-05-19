Rails.application.routes.draw do
  root to: 'users#new'
  
  get '/register', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  
  resources :users, only: :create
  resources :receipts, only: [:new, :create, :index]
  resources :items
end
